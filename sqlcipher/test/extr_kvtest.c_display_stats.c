
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3 ;
typedef int FILE ;


 int SQLITE_DBSTATUS_CACHE_HIT ;
 int SQLITE_DBSTATUS_CACHE_MISS ;
 int SQLITE_DBSTATUS_CACHE_USED ;
 int SQLITE_DBSTATUS_CACHE_WRITE ;
 int SQLITE_STATUS_MALLOC_COUNT ;
 int SQLITE_STATUS_MALLOC_SIZE ;
 int SQLITE_STATUS_MEMORY_USED ;
 int SQLITE_STATUS_PAGECACHE_OVERFLOW ;
 int SQLITE_STATUS_PAGECACHE_SIZE ;
 int SQLITE_STATUS_PAGECACHE_USED ;
 int displayLinuxIoStats (int *) ;
 int fprintf (int *,char*,...) ;
 int sqlite3_db_status (int *,int ,int*,int*,int) ;
 int sqlite3_status (int ,int*,int*,int) ;
 int * stdout ;

__attribute__((used)) static int display_stats(
  sqlite3 *db,
  int bReset
){
  int iCur;
  int iHiwtr;
  FILE *out = stdout;

  fprintf(out, "\n");

  iHiwtr = iCur = -1;
  sqlite3_status(SQLITE_STATUS_MEMORY_USED, &iCur, &iHiwtr, bReset);
  fprintf(out,
          "Memory Used:                         %d (max %d) bytes\n",
          iCur, iHiwtr);
  iHiwtr = iCur = -1;
  sqlite3_status(SQLITE_STATUS_MALLOC_COUNT, &iCur, &iHiwtr, bReset);
  fprintf(out, "Number of Outstanding Allocations:   %d (max %d)\n",
          iCur, iHiwtr);
  iHiwtr = iCur = -1;
  sqlite3_status(SQLITE_STATUS_PAGECACHE_USED, &iCur, &iHiwtr, bReset);
  fprintf(out,
      "Number of Pcache Pages Used:         %d (max %d) pages\n",
      iCur, iHiwtr);
  iHiwtr = iCur = -1;
  sqlite3_status(SQLITE_STATUS_PAGECACHE_OVERFLOW, &iCur, &iHiwtr, bReset);
  fprintf(out,
          "Number of Pcache Overflow Bytes:     %d (max %d) bytes\n",
          iCur, iHiwtr);
  iHiwtr = iCur = -1;
  sqlite3_status(SQLITE_STATUS_MALLOC_SIZE, &iCur, &iHiwtr, bReset);
  fprintf(out, "Largest Allocation:                  %d bytes\n",
          iHiwtr);
  iHiwtr = iCur = -1;
  sqlite3_status(SQLITE_STATUS_PAGECACHE_SIZE, &iCur, &iHiwtr, bReset);
  fprintf(out, "Largest Pcache Allocation:           %d bytes\n",
          iHiwtr);

  iHiwtr = iCur = -1;
  sqlite3_db_status(db, SQLITE_DBSTATUS_CACHE_USED, &iCur, &iHiwtr, bReset);
  fprintf(out, "Pager Heap Usage:                    %d bytes\n",
      iCur);
  iHiwtr = iCur = -1;
  sqlite3_db_status(db, SQLITE_DBSTATUS_CACHE_HIT, &iCur, &iHiwtr, 1);
  fprintf(out, "Page cache hits:                     %d\n", iCur);
  iHiwtr = iCur = -1;
  sqlite3_db_status(db, SQLITE_DBSTATUS_CACHE_MISS, &iCur, &iHiwtr, 1);
  fprintf(out, "Page cache misses:                   %d\n", iCur);
  iHiwtr = iCur = -1;
  sqlite3_db_status(db, SQLITE_DBSTATUS_CACHE_WRITE, &iCur, &iHiwtr, 1);
  fprintf(out, "Page cache writes:                   %d\n", iCur);
  iHiwtr = iCur = -1;


  displayLinuxIoStats(out);


  return 0;
}
