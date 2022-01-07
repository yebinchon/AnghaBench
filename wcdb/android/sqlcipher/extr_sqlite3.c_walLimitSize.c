
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ i64 ;
struct TYPE_3__ {int zWalName; int pWalFd; } ;
typedef TYPE_1__ Wal ;


 int SQLITE_OK ;
 int sqlite3BeginBenignMalloc () ;
 int sqlite3EndBenignMalloc () ;
 int sqlite3OsFileSize (int ,scalar_t__*) ;
 int sqlite3OsTruncate (int ,scalar_t__) ;
 int sqlite3_log (int,char*,int ) ;

__attribute__((used)) static void walLimitSize(Wal *pWal, i64 nMax){
  i64 sz;
  int rx;
  sqlite3BeginBenignMalloc();
  rx = sqlite3OsFileSize(pWal->pWalFd, &sz);
  if( rx==SQLITE_OK && (sz > nMax ) ){
    rx = sqlite3OsTruncate(pWal->pWalFd, nMax);
  }
  sqlite3EndBenignMalloc();
  if( rx ){
    sqlite3_log(rx, "cannot limit WAL size: %s", pWal->zWalName);
  }
}
