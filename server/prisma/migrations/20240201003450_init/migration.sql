-- CreateTable
CREATE TABLE "workspace_suggested_messages" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "workspaceId" INTEGER NOT NULL,
    "heading" TEXT NOT NULL,
    "message" TEXT NOT NULL,
    "createdAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "lastUpdatedAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT "workspace_suggested_messages_workspaceId_fkey" FOREIGN KEY ("workspaceId") REFERENCES "workspaces" ("id") ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TRIGGER update_lastUpdatedAt AFTER UPDATE ON workspace_suggested_messages
FOR EACH ROW
BEGIN
    UPDATE workspace_suggested_messages SET lastUpdatedAt = CURRENT_TIMESTAMP WHERE id = NEW.id;
END;