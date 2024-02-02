-- CreateTable
CREATE TABLE "event_logs" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "event" TEXT NOT NULL,
    "description" TEXT,
    "metadata" TEXT,
    "userId" INTEGER,
    "occurredAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "ipAddress" TEXT
);
ALTER TABLE "event_logs" ADD CONSTRAINT "fk_userId" FOREIGN KEY ("userId") REFERENCES "users"("id");
-- CreateIndex
CREATE INDEX "event_logs_userId_idx" ON "event_logs"("userId");

-- CreateIndex
CREATE INDEX "event_logs_event_idx" ON "event_logs"("event");
