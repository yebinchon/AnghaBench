
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ rc; } ;
struct TYPE_7__ {scalar_t__ db; } ;
typedef TYPE_1__ Sqlite ;
typedef TYPE_2__ Error ;


 scalar_t__ SQLITE_OK ;
 int SQLITE_OPEN_CREATE ;
 int SQLITE_OPEN_READWRITE ;
 int SQLITE_OPEN_URI ;
 int SQLITE_UTF8 ;
 int busyhandler ;
 int md5finalize ;
 int md5step ;
 int sqlite3_busy_handler (scalar_t__,int ,int ) ;
 int sqlite3_close (scalar_t__) ;
 int sqlite3_create_function (scalar_t__,char*,int,int ,int ,int ,int ,int ) ;
 int sqlite3_exec (scalar_t__,char*,int ,int ,int ) ;
 int sqlite3_open_v2 (char const*,scalar_t__*,int,int ) ;
 int sqlite_error (TYPE_2__*,TYPE_1__*,char*) ;
 int unlink (char const*) ;

__attribute__((used)) static void opendb_x(
  Error *pErr,
  Sqlite *pDb,
  const char *zFile,
  int bDelete
){
  if( pErr->rc==SQLITE_OK ){
    int rc;
    int flags = SQLITE_OPEN_CREATE | SQLITE_OPEN_READWRITE | SQLITE_OPEN_URI;
    if( bDelete ) unlink(zFile);
    rc = sqlite3_open_v2(zFile, &pDb->db, flags, 0);
    if( rc ){
      sqlite_error(pErr, pDb, "open");
      sqlite3_close(pDb->db);
      pDb->db = 0;
    }else{
      sqlite3_create_function(
          pDb->db, "md5sum", -1, SQLITE_UTF8, 0, 0, md5step, md5finalize
      );
      sqlite3_busy_handler(pDb->db, busyhandler, 0);
      sqlite3_exec(pDb->db, "PRAGMA synchronous=OFF", 0, 0, 0);
    }
  }
}
