
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ iSnapshotId; TYPE_4__* aRegion; } ;
struct TYPE_11__ {TYPE_5__ log; } ;
struct TYPE_12__ {TYPE_2__ treehdr; TYPE_1__* pShmhdr; } ;
typedef TYPE_3__ lsm_db ;
typedef scalar_t__ i64 ;
struct TYPE_13__ {scalar_t__ iStart; scalar_t__ iEnd; } ;
struct TYPE_10__ {scalar_t__ iMetaPage; } ;
typedef TYPE_4__ LogRegion ;
typedef TYPE_5__ DbLog ;


 int LSM_OK ;
 int assert (int) ;
 int lsmCheckpointSynced (TYPE_3__*,scalar_t__*,scalar_t__*,int ) ;
 int lsmDetectRoTrans (TYPE_3__*,int*) ;
 int lsmFsReadSyncedId (TYPE_3__*,int,scalar_t__*) ;

__attribute__((used)) static int logReclaimSpace(lsm_db *pDb){
  int rc;
  int iMeta;
  int bRotrans;



  rc = lsmDetectRoTrans(pDb, &bRotrans);
  if( rc!=LSM_OK || bRotrans ) return rc;

  iMeta = (int)pDb->pShmhdr->iMetaPage;
  if( iMeta==1 || iMeta==2 ){
    DbLog *pLog = &pDb->treehdr.log;
    i64 iSyncedId;
    rc = lsmFsReadSyncedId(pDb, iMeta, &iSyncedId);

    if( rc==LSM_OK && pLog->iSnapshotId!=iSyncedId ){
      i64 iSnapshotId = 0;
      i64 iOff = 0;
      rc = lsmCheckpointSynced(pDb, &iSnapshotId, &iOff, 0);
      if( rc==LSM_OK && pLog->iSnapshotId<iSnapshotId ){
        int iRegion;
        for(iRegion=0; iRegion<3; iRegion++){
          LogRegion *p = &pLog->aRegion[iRegion];
          if( iOff>=p->iStart && iOff<=p->iEnd ) break;
          p->iStart = 0;
          p->iEnd = 0;
        }
        assert( iRegion<3 );
        pLog->aRegion[iRegion].iStart = iOff;
        pLog->iSnapshotId = iSnapshotId;
      }
    }
  }
  return rc;
}
