
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_9__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct SrcList_item {scalar_t__ pTab; int zName; } ;
struct TYPE_14__ {TYPE_6__* pRename; } ;
struct TYPE_15__ {TYPE_9__* pParse; TYPE_2__ u; } ;
typedef TYPE_3__ Walker ;
struct TYPE_19__ {TYPE_1__* db; } ;
struct TYPE_18__ {scalar_t__ pTab; } ;
struct TYPE_17__ {TYPE_4__* pSrc; } ;
struct TYPE_16__ {int nSrc; struct SrcList_item* a; } ;
struct TYPE_13__ {int mallocFailed; } ;
typedef TYPE_4__ SrcList ;
typedef TYPE_5__ Select ;
typedef TYPE_6__ RenameCtx ;


 int WRC_Abort ;
 int WRC_Continue ;
 int assert (int ) ;
 int renameTokenFind (TYPE_9__*,TYPE_6__*,int ) ;
 int renameWalkWith (TYPE_3__*,TYPE_5__*) ;

__attribute__((used)) static int renameTableSelectCb(Walker *pWalker, Select *pSelect){
  int i;
  RenameCtx *p = pWalker->u.pRename;
  SrcList *pSrc = pSelect->pSrc;
  if( pSrc==0 ){
    assert( pWalker->pParse->db->mallocFailed );
    return WRC_Abort;
  }
  for(i=0; i<pSrc->nSrc; i++){
    struct SrcList_item *pItem = &pSrc->a[i];
    if( pItem->pTab==p->pTab ){
      renameTokenFind(pWalker->pParse, p, pItem->zName);
    }
  }
  renameWalkWith(pWalker, pSelect);

  return WRC_Continue;
}
