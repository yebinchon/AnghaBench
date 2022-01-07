
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lsm_db ;


 int LSM_OK ;
 int assert (int) ;
 int doLsmSingleWork (int *,int ,int,int,int*,int*) ;
 int lsm_checkpoint (int *,int ) ;

__attribute__((used)) static int doLsmWork(lsm_db *pDb, int nMerge, int nPage, int *pnWrite){
  int rc = LSM_OK;
  int nWrite = 0;

  assert( nMerge>=1 );

  if( nPage!=0 ){
    int bCkpt = 0;
    do {
      int nThis = 0;
      int nReq = (nPage>=0) ? (nPage-nWrite) : ((int)0x7FFFFFFF);

      bCkpt = 0;
      rc = doLsmSingleWork(pDb, 0, nMerge, nReq, &nThis, &bCkpt);
      nWrite += nThis;
      if( rc==LSM_OK && bCkpt ){
        rc = lsm_checkpoint(pDb, 0);
      }
    }while( rc==LSM_OK && bCkpt && (nWrite<nPage || nPage<0) );
  }

  if( pnWrite ){
    if( rc==LSM_OK ){
      *pnWrite = nWrite;
    }else{
      *pnWrite = 0;
    }
  }
  return rc;
}
