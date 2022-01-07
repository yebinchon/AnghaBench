
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3_vtab ;
typedef int sqlite3 ;
struct TYPE_4__ {struct TYPE_4__* zCostTable; int pConfig3; struct TYPE_4__* zTableName; int zDbName; int * db; } ;
typedef TYPE_1__ spellfix1_vtab ;


 int SQLITE_OK ;
 int editDist3ConfigDelete (int ) ;
 int spellfix1DbExec (int*,int *,char*,int ,TYPE_1__*) ;
 int sqlite3_free (TYPE_1__*) ;

__attribute__((used)) static int spellfix1Uninit(int isDestroy, sqlite3_vtab *pVTab){
  spellfix1_vtab *p = (spellfix1_vtab*)pVTab;
  int rc = SQLITE_OK;
  if( isDestroy ){
    sqlite3 *db = p->db;
    spellfix1DbExec(&rc, db, "DROP TABLE IF EXISTS \"%w\".\"%w_vocab\"",
                  p->zDbName, p->zTableName);
  }
  if( rc==SQLITE_OK ){
    sqlite3_free(p->zTableName);
    editDist3ConfigDelete(p->pConfig3);
    sqlite3_free(p->zCostTable);
    sqlite3_free(p);
  }
  return rc;
}
