
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {scalar_t__ pClient; scalar_t__ pWorker; int * aSnapshot; } ;
typedef TYPE_1__ lsm_db ;


 size_t CKPT_HDR_CMPID ;
 int LSM_OK ;
 int assert (int) ;
 int lsmCheckpointLoad (TYPE_1__*,int ) ;

int lsmInfoCompressionId(lsm_db *db, u32 *piCmpId){
  int rc;

  assert( db->pClient==0 && db->pWorker==0 );
  rc = lsmCheckpointLoad(db, 0);
  if( rc==LSM_OK ){
    *piCmpId = db->aSnapshot[CKPT_HDR_CMPID];
  }

  return rc;
}
