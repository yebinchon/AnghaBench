
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct WindowRewrite {int * pSubSelect; } ;
struct TYPE_5__ {struct WindowRewrite* pRewrite; } ;
struct TYPE_6__ {TYPE_1__ u; } ;
typedef TYPE_2__ Walker ;
typedef int Select ;


 int WRC_Continue ;
 int WRC_Prune ;
 int sqlite3WalkSelect (TYPE_2__*,int *) ;

__attribute__((used)) static int selectWindowRewriteSelectCb(Walker *pWalker, Select *pSelect){
  struct WindowRewrite *p = pWalker->u.pRewrite;
  Select *pSave = p->pSubSelect;
  if( pSave==pSelect ){
    return WRC_Continue;
  }else{
    p->pSubSelect = pSelect;
    sqlite3WalkSelect(pWalker, pSelect);
    p->pSubSelect = pSave;
  }
  return WRC_Prune;
}
