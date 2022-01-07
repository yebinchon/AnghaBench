
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pVfs; int iSysErrno; } ;
typedef TYPE_1__ sqlite3 ;


 int SQLITE_CANTOPEN ;
 int SQLITE_IOERR ;
 int SQLITE_IOERR_NOMEM ;
 int sqlite3OsGetLastError (int ) ;

void sqlite3SystemError(sqlite3 *db, int rc){
  if( rc==SQLITE_IOERR_NOMEM ) return;
  rc &= 0xff;
  if( rc==SQLITE_CANTOPEN || rc==SQLITE_IOERR ){
    db->iSysErrno = sqlite3OsGetLastError(db->pVfs);
  }
}
