
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_14__ {void* pData; int member_2; int member_1; int member_0; } ;
struct TYPE_13__ {TYPE_1__* pDb; } ;
struct TYPE_12__ {scalar_t__ iRoot; } ;
struct TYPE_11__ {int xCmp; int pFS; } ;
typedef TYPE_2__ Segment ;
typedef int Page ;
typedef TYPE_3__ MultiCursor ;
typedef int LsmPgno ;
typedef TYPE_4__ LsmBlob ;


 int LSM_OK ;
 int SEGMENT_BTREE_FLAG ;
 int assert (int) ;
 int * fsPageData (int *,int*) ;
 int lsmFsDbPageGet (int ,TYPE_2__*,int,int **) ;
 int lsmFsPageRelease (int *) ;
 int pageGetBtreeKey (TYPE_2__*,int *,int,int*,int*,void**,int*,TYPE_4__*) ;
 int pageGetBtreeRef (int *,int) ;
 int pageGetFlags (int *,int) ;
 int pageGetNRec (int *,int) ;
 scalar_t__ pageGetPtr (int *,int) ;
 int sortedBlobFree (TYPE_4__*) ;
 int sortedKeyCompare (int ,int,void*,int,int,void*,int) ;

__attribute__((used)) static int seekInBtree(
  MultiCursor *pCsr,
  Segment *pSeg,
  int iTopic,
  void *pKey, int nKey,
  LsmPgno *aPg,
  Page **ppPg
){
  int i = 0;
  int rc;
  int iPg;
  Page *pPg = 0;
  LsmBlob blob = {0, 0, 0};

  iPg = (int)pSeg->iRoot;
  do {
    LsmPgno *piFirst = 0;
    if( aPg ){
      aPg[i++] = iPg;
      piFirst = &aPg[i];
    }

    rc = lsmFsDbPageGet(pCsr->pDb->pFS, pSeg, iPg, &pPg);
    assert( rc==LSM_OK || pPg==0 );
    if( rc==LSM_OK ){
      u8 *aData;
      int nData;
      int iMin;
      int iMax;
      int nRec;
      int flags;

      aData = fsPageData(pPg, &nData);
      flags = pageGetFlags(aData, nData);
      if( (flags & SEGMENT_BTREE_FLAG)==0 ) break;

      iPg = (int)pageGetPtr(aData, nData);
      nRec = pageGetNRec(aData, nData);

      iMin = 0;
      iMax = nRec-1;
      while( iMax>=iMin ){
        int iTry = (iMin+iMax)/2;
        void *pKeyT; int nKeyT;
        int iTopicT;
        LsmPgno iPtr;
        int res;

        rc = pageGetBtreeKey(
            pSeg, pPg, iTry, &iPtr, &iTopicT, &pKeyT, &nKeyT, &blob
        );
        if( rc!=LSM_OK ) break;
        if( piFirst && pKeyT==blob.pData ){
          *piFirst = pageGetBtreeRef(pPg, iTry);
          piFirst = 0;
          i++;
        }

        res = sortedKeyCompare(
            pCsr->pDb->xCmp, iTopic, pKey, nKey, iTopicT, pKeyT, nKeyT
        );
        if( res<0 ){
          iPg = (int)iPtr;
          iMax = iTry-1;
        }else{
          iMin = iTry+1;
        }
      }
      lsmFsPageRelease(pPg);
      pPg = 0;
    }
  }while( rc==LSM_OK );

  sortedBlobFree(&blob);
  assert( (rc==LSM_OK)==(pPg!=0) );
  if( ppPg ){
    *ppPg = pPg;
  }else{
    lsmFsPageRelease(pPg);
  }
  return rc;
}
