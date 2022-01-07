
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ pVtab; } ;
struct TYPE_9__ {scalar_t__ iRowid; scalar_t__ iPos; scalar_t__ iEnd; scalar_t__ iStart; scalar_t__ nToken; scalar_t__ zToken; scalar_t__ zInput; scalar_t__ pCsr; TYPE_1__ base; } ;
struct TYPE_8__ {TYPE_2__* pMod; } ;
struct TYPE_7__ {int (* xClose ) (scalar_t__) ;} ;
typedef TYPE_3__ Fts3tokTable ;
typedef TYPE_4__ Fts3tokCursor ;


 int sqlite3_free (scalar_t__) ;
 int stub1 (scalar_t__) ;

__attribute__((used)) static void fts3tokResetCursor(Fts3tokCursor *pCsr){
  if( pCsr->pCsr ){
    Fts3tokTable *pTab = (Fts3tokTable *)(pCsr->base.pVtab);
    pTab->pMod->xClose(pCsr->pCsr);
    pCsr->pCsr = 0;
  }
  sqlite3_free(pCsr->zInput);
  pCsr->zInput = 0;
  pCsr->zToken = 0;
  pCsr->nToken = 0;
  pCsr->iStart = 0;
  pCsr->iEnd = 0;
  pCsr->iPos = 0;
  pCsr->iRowid = 0;
}
