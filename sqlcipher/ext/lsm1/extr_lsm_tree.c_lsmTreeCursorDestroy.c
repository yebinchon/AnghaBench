
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* pDb; int blob; } ;
typedef TYPE_1__ TreeCursor ;
struct TYPE_6__ {int pEnv; } ;


 int lsmFree (int ,TYPE_1__*) ;
 int tblobFree (TYPE_2__*,int *) ;

void lsmTreeCursorDestroy(TreeCursor *pCsr){
  if( pCsr ){
    tblobFree(pCsr->pDb, &pCsr->blob);
    lsmFree(pCsr->pDb->pEnv, pCsr);
  }
}
