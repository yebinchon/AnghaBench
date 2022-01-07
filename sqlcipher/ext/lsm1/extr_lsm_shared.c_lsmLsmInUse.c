
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* pClient; } ;
typedef TYPE_2__ lsm_db ;
typedef scalar_t__ i64 ;
struct TYPE_5__ {scalar_t__ iId; } ;


 int LSM_OK ;
 int isInUse (TYPE_2__*,scalar_t__,int ,int*) ;

int lsmLsmInUse(lsm_db *db, i64 iLsmId, int *pbInUse){
  if( db->pClient && db->pClient->iId<=iLsmId ){
    *pbInUse = 1;
    return LSM_OK;
  }
  return isInUse(db, iLsmId, 0, pbInUse);
}
