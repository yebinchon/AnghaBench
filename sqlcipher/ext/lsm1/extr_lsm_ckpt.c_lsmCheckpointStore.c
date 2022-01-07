
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_3__ {scalar_t__* aSnapshot; int pFS; } ;
typedef TYPE_1__ lsm_db ;
typedef int MetaPage ;


 size_t CKPT_HDR_NCKPT ;
 int LSM_OK ;
 int assert (int) ;
 int ckptChangeEndianness (int *,int) ;
 int * lsmFsMetaPageData (int *,int*) ;
 int lsmFsMetaPageGet (int ,int,int,int **) ;
 int lsmFsMetaPageRelease (int *) ;
 int memcpy (int *,scalar_t__*,int) ;

int lsmCheckpointStore(lsm_db *pDb, int iMeta){
  MetaPage *pPg = 0;
  int rc;

  assert( iMeta==1 || iMeta==2 );
  rc = lsmFsMetaPageGet(pDb->pFS, 1, iMeta, &pPg);
  if( rc==LSM_OK ){
    u8 *aData;
    int nData;
    int nCkpt;

    nCkpt = (int)pDb->aSnapshot[CKPT_HDR_NCKPT];
    aData = lsmFsMetaPageData(pPg, &nData);
    memcpy(aData, pDb->aSnapshot, nCkpt*sizeof(u32));
    ckptChangeEndianness((u32 *)aData, nCkpt);
    rc = lsmFsMetaPageRelease(pPg);
  }

  return rc;
}
