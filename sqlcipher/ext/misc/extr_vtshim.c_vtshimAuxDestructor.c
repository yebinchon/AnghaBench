
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pAllVtab; struct TYPE_3__* pMod; struct TYPE_3__* zName; int (* xChildDestroy ) (int ) ;int pChildAux; int bDisposed; } ;
typedef TYPE_1__ vtshim_aux ;


 int assert (int) ;
 int sqlite3_free (TYPE_1__*) ;
 int stub1 (int ) ;

__attribute__((used)) static void vtshimAuxDestructor(void *pXAux){
  vtshim_aux *pAux = (vtshim_aux*)pXAux;
  assert( pAux->pAllVtab==0 );
  if( !pAux->bDisposed && pAux->xChildDestroy ){
    pAux->xChildDestroy(pAux->pChildAux);
    pAux->xChildDestroy = 0;
  }
  sqlite3_free(pAux->zName);
  sqlite3_free(pAux->pMod);
  sqlite3_free(pAux);
}
