
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* zCandidates; int hIdx; int pWrite; int pTable; int pStatement; int pScan; int dbv; int dbm; } ;
typedef TYPE_1__ sqlite3expert ;


 int idxHashClear (int *) ;
 int idxScanFree (int ,int ) ;
 int idxStatementFree (int ,int ) ;
 int idxTableFree (int ) ;
 int idxWriteFree (int ) ;
 int sqlite3_close (int ) ;
 int sqlite3_free (TYPE_1__*) ;

void sqlite3_expert_destroy(sqlite3expert *p){
  if( p ){
    sqlite3_close(p->dbm);
    sqlite3_close(p->dbv);
    idxScanFree(p->pScan, 0);
    idxStatementFree(p->pStatement, 0);
    idxTableFree(p->pTable);
    idxWriteFree(p->pWrite);
    idxHashClear(&p->hIdx);
    sqlite3_free(p->zCandidates);
    sqlite3_free(p);
  }
}
