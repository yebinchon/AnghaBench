
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_10__ {scalar_t__ iRoot; } ;
struct TYPE_9__ {int nDepth; int iPg; TYPE_1__* aPg; TYPE_5__* pSeg; int * pFS; } ;
struct TYPE_8__ {int iCell; int * pPage; } ;
typedef int Page ;
typedef int FileSystem ;
typedef TYPE_1__ BtreePg ;
typedef TYPE_2__ BtreeCursor ;


 int LSM_OK ;
 int SEGMENT_BTREE_FLAG ;
 int assert (int) ;
 int btreeCursorNext (TYPE_2__*) ;
 int * fsPageData (int *,int*) ;
 int lsmFsDbPageGet (int *,TYPE_5__*,int,int **) ;
 int lsmFsEnv (int *) ;
 int lsmFsPageRelease (int *) ;
 scalar_t__ lsmReallocOrFreeRc (int ,TYPE_1__*,int,int*) ;
 int memset (TYPE_1__*,int ,int) ;
 int pageGetFlags (int *,int) ;
 scalar_t__ pageGetRecordPtr (int *,int,int ) ;

__attribute__((used)) static int btreeCursorFirst(BtreeCursor *pCsr){
  int rc;

  Page *pPg = 0;
  FileSystem *pFS = pCsr->pFS;
  int iPg = (int)pCsr->pSeg->iRoot;

  do {
    rc = lsmFsDbPageGet(pFS, pCsr->pSeg, iPg, &pPg);
    assert( (rc==LSM_OK)==(pPg!=0) );
    if( rc==LSM_OK ){
      u8 *aData;
      int nData;
      int flags;

      aData = fsPageData(pPg, &nData);
      flags = pageGetFlags(aData, nData);
      if( (flags & SEGMENT_BTREE_FLAG)==0 ) break;

      if( (pCsr->nDepth % 8)==0 ){
        int nNew = pCsr->nDepth + 8;
        pCsr->aPg = (BtreePg *)lsmReallocOrFreeRc(
            lsmFsEnv(pFS), pCsr->aPg, sizeof(BtreePg) * nNew, &rc
        );
        if( rc==LSM_OK ){
          memset(&pCsr->aPg[pCsr->nDepth], 0, sizeof(BtreePg) * 8);
        }
      }

      if( rc==LSM_OK ){
        assert( pCsr->aPg[pCsr->nDepth].iCell==0 );
        pCsr->aPg[pCsr->nDepth].pPage = pPg;
        pCsr->nDepth++;
        iPg = (int)pageGetRecordPtr(aData, nData, 0);
      }
    }
  }while( rc==LSM_OK );
  lsmFsPageRelease(pPg);
  pCsr->iPg = pCsr->nDepth-1;

  if( rc==LSM_OK && pCsr->nDepth ){
    pCsr->aPg[pCsr->iPg].iCell = -1;
    rc = btreeCursorNext(pCsr);
  }

  return rc;
}
