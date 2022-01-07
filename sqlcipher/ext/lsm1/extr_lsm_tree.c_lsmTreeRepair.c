
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int treehdr; TYPE_2__* pShmhdr; } ;
typedef TYPE_1__ lsm_db ;
typedef int TreeHeader ;
struct TYPE_7__ {int hdr2; int hdr1; } ;
typedef TYPE_2__ ShmHeader ;


 int LSM_OK ;
 scalar_t__ memcmp (int *,int *,int) ;
 int memcpy (int *,int *,int) ;
 scalar_t__ treeHeaderChecksumOk (int *) ;
 int treeRepairList (TYPE_1__*) ;
 int treeRepairPtrs (TYPE_1__*) ;

int lsmTreeRepair(lsm_db *db){
  int rc = LSM_OK;
  TreeHeader hdr;
  ShmHeader *pHdr = db->pShmhdr;




  if( memcmp(&pHdr->hdr1, &pHdr->hdr2, sizeof(TreeHeader)) ){
    if( treeHeaderChecksumOk(&pHdr->hdr1) ){
      memcpy(&pHdr->hdr2, &pHdr->hdr1, sizeof(TreeHeader));
    }else{
      memcpy(&pHdr->hdr1, &pHdr->hdr2, sizeof(TreeHeader));
    }
  }



  memcpy(&hdr, &db->treehdr, sizeof(TreeHeader));



  rc = treeRepairPtrs(db);


  if( rc==LSM_OK ){
    rc = treeRepairList(db);
  }

  memcpy(&db->treehdr, &hdr, sizeof(TreeHeader));
  return rc;
}
