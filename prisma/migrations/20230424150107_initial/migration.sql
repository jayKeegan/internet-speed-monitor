-- CreateTable
CREATE TABLE "speedtest" (
    "id" TEXT NOT NULL,
    "ping" DOUBLE PRECISION NOT NULL,
    "upload" DOUBLE PRECISION NOT NULL,
    "download" DOUBLE PRECISION NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "speedtest_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE INDEX "speedtest_created_at_idx" ON "speedtest"("created_at");
