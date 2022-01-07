
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bHasStat; int zName; int zDb; int db; } ;
typedef TYPE_1__ Fts3Table ;


 int SQLITE_OK ;
 int fts3DbExec (int*,int ,char*,int ,int ) ;

void sqlite3Fts3CreateStatTable(int *pRc, Fts3Table *p){
  fts3DbExec(pRc, p->db,
      "CREATE TABLE IF NOT EXISTS %Q.'%q_stat'"
          "(id INTEGER PRIMARY KEY, value BLOB);",
      p->zDb, p->zName
  );
  if( (*pRc)==SQLITE_OK ) p->bHasStat = 1;
}
