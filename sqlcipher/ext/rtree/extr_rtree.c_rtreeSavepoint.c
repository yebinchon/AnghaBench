
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int sqlite3_vtab ;
struct TYPE_3__ {scalar_t__ inWrTrans; } ;
typedef TYPE_1__ Rtree ;


 int SQLITE_OK ;
 int UNUSED_PARAMETER (int) ;
 int nodeBlobReset (TYPE_1__*) ;

__attribute__((used)) static int rtreeSavepoint(sqlite3_vtab *pVtab, int iSavepoint){
  Rtree *pRtree = (Rtree *)pVtab;
  u8 iwt = pRtree->inWrTrans;
  UNUSED_PARAMETER(iSavepoint);
  pRtree->inWrTrans = 0;
  nodeBlobReset(pRtree);
  pRtree->inWrTrans = iwt;
  return SQLITE_OK;
}
