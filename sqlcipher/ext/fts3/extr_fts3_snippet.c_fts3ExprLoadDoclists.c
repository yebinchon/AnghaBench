
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int pExpr; } ;
struct TYPE_4__ {int nPhrase; int nToken; TYPE_2__* pCsr; int member_2; int member_1; int member_0; } ;
typedef TYPE_1__ LoadDoclistCtx ;
typedef TYPE_2__ Fts3Cursor ;


 int fts3ExprIterate (int ,int ,void*) ;
 int fts3ExprLoadDoclistsCb ;

__attribute__((used)) static int fts3ExprLoadDoclists(
  Fts3Cursor *pCsr,
  int *pnPhrase,
  int *pnToken
){
  int rc;
  LoadDoclistCtx sCtx = {0,0,0};
  sCtx.pCsr = pCsr;
  rc = fts3ExprIterate(pCsr->pExpr, fts3ExprLoadDoclistsCb, (void *)&sCtx);
  if( pnPhrase ) *pnPhrase = sCtx.nPhrase;
  if( pnToken ) *pnToken = sCtx.nToken;
  return rc;
}
