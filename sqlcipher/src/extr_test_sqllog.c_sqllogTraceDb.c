
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3 ;
struct TYPE_2__ {scalar_t__ bConditional; } ;


 int F_OK ;
 int SQLITE_IOERR ;
 int SQLITE_OK ;
 int SQLLOG_NAMESZ ;
 int access (char*,int ) ;
 int memcpy (char*,char*,int) ;
 int sqlite3_log (int ,char*,int) ;
 int sqllogFindAttached (int *,char*,int ,char*) ;
 TYPE_1__ sqllogglobal ;
 int strlen (char*) ;

__attribute__((used)) static int sqllogTraceDb(sqlite3 *db){
  int bRet = 1;
  if( sqllogglobal.bConditional ){
    char zFile[SQLLOG_NAMESZ];
    int rc = sqllogFindAttached(db, "main", 0, zFile);
    if( rc==SQLITE_OK ){
      int nFile = strlen(zFile);
      if( (SQLLOG_NAMESZ-nFile)<8 ){
        sqlite3_log(SQLITE_IOERR,
            "sqllogTraceDb(): database name too long (%d bytes)", nFile
        );
        bRet = 0;
      }else{
        memcpy(&zFile[nFile], "-sqllog", 8);
        bRet = !access(zFile, F_OK);
      }
    }
  }
  return bRet;
}
