
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int startupInfo ;
typedef int processInfo ;
struct TYPE_8__ {int iTrace; scalar_t__ zVfs; scalar_t__ bSync; scalar_t__ bSqlTrace; int zDbFile; int argv0; int db; } ;
struct TYPE_7__ {int cb; int hProcess; int hThread; } ;
typedef TYPE_1__ STARTUPINFOA ;
typedef TYPE_1__ PROCESS_INFORMATION ;


 int CloseHandle (int ) ;
 int CreateProcessA (int *,char*,int *,int *,int ,int ,int *,int *,TYPE_1__*,TYPE_1__*) ;
 int FALSE ;
 int GetLastError () ;
 int errorMessage (char*,int) ;
 TYPE_4__ g ;
 int logMessage (char*,char*) ;
 int memset (TYPE_1__*,int ,int) ;
 int runSql (char*,int) ;
 scalar_t__ sqlite3_changes (int ) ;
 int sqlite3_free (char*) ;
 char* sqlite3_mprintf (char*,char*,...) ;
 int system (char*) ;

__attribute__((used)) static void startClient(int iClient){
  runSql("INSERT OR IGNORE INTO client VALUES(%d,0)", iClient);
  if( sqlite3_changes(g.db) ){
    char *zSys;
    int rc;
    zSys = sqlite3_mprintf("%s \"%s\" --client %d --trace %d",
                 g.argv0, g.zDbFile, iClient, g.iTrace);
    if( g.bSqlTrace ){
      zSys = sqlite3_mprintf("%z --sqltrace", zSys);
    }
    if( g.bSync ){
      zSys = sqlite3_mprintf("%z --sync", zSys);
    }
    if( g.zVfs ){
      zSys = sqlite3_mprintf("%z --vfs \"%s\"", zSys, g.zVfs);
    }
    if( g.iTrace>=2 ) logMessage("system('%q')", zSys);

    zSys = sqlite3_mprintf("%z &", zSys);
    rc = system(zSys);
    if( rc ) errorMessage("system() fails with error code %d", rc);
    sqlite3_free(zSys);
  }
}
