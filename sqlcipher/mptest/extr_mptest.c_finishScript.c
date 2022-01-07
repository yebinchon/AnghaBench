
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SQLITE_OK ;
 int runSql (char*,int) ;

__attribute__((used)) static int finishScript(int iClient, int taskId, int bShutdown){
  runSql("UPDATE task"
         "   SET endtime=strftime('%%Y-%%m-%%d %%H:%%M:%%f','now')"
         " WHERE id=%d;", taskId);
  if( bShutdown ){
    runSql("DELETE FROM client WHERE id=%d", iClient);
  }
  return SQLITE_OK;
}
