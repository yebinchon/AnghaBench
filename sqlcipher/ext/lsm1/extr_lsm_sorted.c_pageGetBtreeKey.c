
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int nData; void* pData; } ;
typedef int Segment ;
typedef int Page ;
typedef int LsmPgno ;
typedef TYPE_1__ LsmBlob ;


 int GETVARINT32 (int *,int) ;
 int GETVARINT64 (int *,int ) ;
 int LSM_OK ;
 int SEGMENT_BTREE_FLAG ;
 int assert (int) ;
 int * fsPageData (int *,int*) ;
 int lsmFsDbPageGet (int ,int *,int ,int **) ;
 int lsmFsPageRelease (int *) ;
 int lsmPageEnv (int *) ;
 int lsmPageFS (int *) ;
 int * pageGetCell (int *,int,int) ;
 int pageGetFlags (int *,int) ;
 int pageGetKeyCopy (int ,int *,int *,int ,int*,TYPE_1__*) ;
 int pageGetNRec (int *,int) ;
 int rtTopic (int) ;

__attribute__((used)) static int pageGetBtreeKey(
  Segment *pSeg,
  Page *pPg,
  int iKey,
  LsmPgno *piPtr,
  int *piTopic,
  void **ppKey,
  int *pnKey,
  LsmBlob *pBlob
){
  u8 *aData;
  int nData;
  u8 *aCell;
  int eType;

  aData = fsPageData(pPg, &nData);
  assert( SEGMENT_BTREE_FLAG & pageGetFlags(aData, nData) );
  assert( iKey>=0 && iKey<pageGetNRec(aData, nData) );

  aCell = pageGetCell(aData, nData, iKey);
  eType = *aCell++;
  aCell += GETVARINT64(aCell, *piPtr);

  if( eType==0 ){
    int rc;
    LsmPgno iRef;
    Page *pRef;
    aCell += GETVARINT64(aCell, iRef);
    rc = lsmFsDbPageGet(lsmPageFS(pPg), pSeg, iRef, &pRef);
    if( rc!=LSM_OK ) return rc;
    pageGetKeyCopy(lsmPageEnv(pPg), pSeg, pRef, 0, &eType, pBlob);
    lsmFsPageRelease(pRef);
    *ppKey = pBlob->pData;
    *pnKey = pBlob->nData;
  }else{
    aCell += GETVARINT32(aCell, *pnKey);
    *ppKey = aCell;
  }
  if( piTopic ) *piTopic = rtTopic(eType);

  return LSM_OK;
}
