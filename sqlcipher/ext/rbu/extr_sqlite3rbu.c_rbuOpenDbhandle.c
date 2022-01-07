
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ rc; int zErrmsg; int zVfsName; } ;
typedef TYPE_1__ sqlite3rbu ;
typedef int sqlite3 ;


 scalar_t__ SQLITE_OK ;
 int SQLITE_OPEN_CREATE ;
 int SQLITE_OPEN_READWRITE ;
 int SQLITE_OPEN_URI ;
 int sqlite3_close (int *) ;
 int sqlite3_errmsg (int *) ;
 int sqlite3_mprintf (char*,int ) ;
 scalar_t__ sqlite3_open_v2 (char const*,int **,int const,int ) ;

__attribute__((used)) static sqlite3 *rbuOpenDbhandle(
  sqlite3rbu *p,
  const char *zName,
  int bUseVfs
){
  sqlite3 *db = 0;
  if( p->rc==SQLITE_OK ){
    const int flags = SQLITE_OPEN_READWRITE|SQLITE_OPEN_CREATE|SQLITE_OPEN_URI;
    p->rc = sqlite3_open_v2(zName, &db, flags, bUseVfs ? p->zVfsName : 0);
    if( p->rc ){
      p->zErrmsg = sqlite3_mprintf("%s", sqlite3_errmsg(db));
      sqlite3_close(db);
      db = 0;
    }
  }
  return db;
}
