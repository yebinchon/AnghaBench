
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


struct TYPE_22__ {TYPE_5__* aDb; } ;
typedef TYPE_1__ sqlite3 ;
typedef int Vdbe ;
struct TYPE_23__ {scalar_t__ pSchema; struct TYPE_23__* pNext; } ;
typedef TYPE_2__ Trigger ;
struct TYPE_24__ {scalar_t__ pSchema; int tabFlags; int zName; } ;
typedef TYPE_3__ Table ;
struct TYPE_26__ {scalar_t__ pSchema; int zDbSName; } ;
struct TYPE_25__ {TYPE_1__* db; } ;
typedef TYPE_4__ Parse ;
typedef TYPE_5__ Db ;


 scalar_t__ IsVirtual (TYPE_3__*) ;
 int MASTER_NAME ;
 int OP_DropTable ;
 int OP_VBegin ;
 int OP_VDestroy ;
 int TF_Autoincrement ;
 int assert (int) ;
 int destroyTable (TYPE_4__*,TYPE_3__*) ;
 int sqlite3BeginWriteOperation (TYPE_4__*,int,int) ;
 int sqlite3ChangeCookie (TYPE_4__*,int) ;
 int sqlite3DropTriggerPtr (TYPE_4__*,TYPE_2__*) ;
 int * sqlite3GetVdbe (TYPE_4__*) ;
 int sqlite3MayAbort (TYPE_4__*) ;
 int sqlite3NestedParse (TYPE_4__*,char*,int ,int ,...) ;
 TYPE_2__* sqlite3TriggerList (TYPE_4__*,TYPE_3__*) ;
 int sqlite3VdbeAddOp0 (int *,int ) ;
 int sqlite3VdbeAddOp4 (int *,int ,int,int ,int ,int ,int ) ;
 int sqliteViewResetAll (TYPE_1__*,int) ;

void sqlite3CodeDropTable(Parse *pParse, Table *pTab, int iDb, int isView){
  Vdbe *v;
  sqlite3 *db = pParse->db;
  Trigger *pTrigger;
  Db *pDb = &db->aDb[iDb];

  v = sqlite3GetVdbe(pParse);
  assert( v!=0 );
  sqlite3BeginWriteOperation(pParse, 1, iDb);


  if( IsVirtual(pTab) ){
    sqlite3VdbeAddOp0(v, OP_VBegin);
  }






  pTrigger = sqlite3TriggerList(pParse, pTab);
  while( pTrigger ){
    assert( pTrigger->pSchema==pTab->pSchema ||
        pTrigger->pSchema==db->aDb[1].pSchema );
    sqlite3DropTriggerPtr(pParse, pTrigger);
    pTrigger = pTrigger->pNext;
  }







  if( pTab->tabFlags & TF_Autoincrement ){
    sqlite3NestedParse(pParse,
      "DELETE FROM %Q.sqlite_sequence WHERE name=%Q",
      pDb->zDbSName, pTab->zName
    );
  }
  sqlite3NestedParse(pParse,
      "DELETE FROM %Q.%s WHERE tbl_name=%Q and type!='trigger'",
      pDb->zDbSName, MASTER_NAME, pTab->zName);
  if( !isView && !IsVirtual(pTab) ){
    destroyTable(pParse, pTab);
  }




  if( IsVirtual(pTab) ){
    sqlite3VdbeAddOp4(v, OP_VDestroy, iDb, 0, 0, pTab->zName, 0);
    sqlite3MayAbort(pParse);
  }
  sqlite3VdbeAddOp4(v, OP_DropTable, iDb, 0, 0, pTab->zName, 0);
  sqlite3ChangeCookie(pParse, iDb);
  sqliteViewResetAll(db, iDb);
}
