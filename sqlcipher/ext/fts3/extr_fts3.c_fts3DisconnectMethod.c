
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqlite3_vtab ;
struct TYPE_7__ {TYPE_1__* pModule; } ;
struct TYPE_6__ {scalar_t__ nPendingData; scalar_t__ pSegments; TYPE_3__* pTokenizer; struct TYPE_6__* zLanguageid; struct TYPE_6__* zContentTbl; struct TYPE_6__* zWriteExprlist; struct TYPE_6__* zReadExprlist; struct TYPE_6__* zSegmentsTbl; int * aStmt; int pSeekStmt; } ;
struct TYPE_5__ {int (* xDestroy ) (TYPE_3__*) ;} ;
typedef TYPE_2__ Fts3Table ;


 int SQLITE_OK ;
 int SizeofArray (int *) ;
 int assert (int) ;
 int sqlite3_finalize (int ) ;
 int sqlite3_free (TYPE_2__*) ;
 int stub1 (TYPE_3__*) ;

__attribute__((used)) static int fts3DisconnectMethod(sqlite3_vtab *pVtab){
  Fts3Table *p = (Fts3Table *)pVtab;
  int i;

  assert( p->nPendingData==0 );
  assert( p->pSegments==0 );


  sqlite3_finalize(p->pSeekStmt);
  for(i=0; i<SizeofArray(p->aStmt); i++){
    sqlite3_finalize(p->aStmt[i]);
  }
  sqlite3_free(p->zSegmentsTbl);
  sqlite3_free(p->zReadExprlist);
  sqlite3_free(p->zWriteExprlist);
  sqlite3_free(p->zContentTbl);
  sqlite3_free(p->zLanguageid);


  p->pTokenizer->pModule->xDestroy(p->pTokenizer);

  sqlite3_free(p);
  return SQLITE_OK;
}
