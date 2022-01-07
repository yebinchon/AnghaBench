
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* pWorker; } ;
typedef TYPE_2__ lsm_db ;
struct TYPE_4__ {int * aiAppend; } ;
typedef int LsmPgno ;
typedef int CkptBuffer ;


 int LSM_APPLIST_SZ ;
 int ckptAppend64 (int *,int*,int ,int*) ;

__attribute__((used)) static void ckptExportAppendlist(
  lsm_db *db,
  CkptBuffer *p,
  int *piOut,
  int *pRc
){
  int i;
  LsmPgno *aiAppend = db->pWorker->aiAppend;

  for(i=0; i<LSM_APPLIST_SZ; i++){
    ckptAppend64(p, piOut, aiAppend[i], pRc);
  }
}
