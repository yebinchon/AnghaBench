
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ bUseLog; } ;
typedef TYPE_1__ lsm_db ;


 int LSM_LOG_COMMIT ;
 int LSM_OK ;
 int logFlush (TYPE_1__*,int ) ;

int lsmLogCommit(lsm_db *pDb){
  if( pDb->bUseLog==0 ) return LSM_OK;
  return logFlush(pDb, LSM_LOG_COMMIT);
}
