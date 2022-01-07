
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_7__* pWorker; } ;
typedef TYPE_1__ lsm_db ;
typedef int i64 ;
struct TYPE_10__ {int nBlock; } ;
struct TYPE_9__ {int nBlock; int iInUse; } ;
typedef TYPE_2__ DbTruncateCtx ;


 int LSM_OK ;
 int assert (TYPE_7__*) ;
 int dbTruncateCb ;
 int freelistAppend (TYPE_1__*,int,int) ;
 int lsmLogMessage (TYPE_1__*,int ,char*,int) ;
 int lsmWalkFreelist (TYPE_1__*,int,int ,void*) ;

__attribute__((used)) static int dbTruncate(lsm_db *pDb, i64 iInUse){
  int rc = LSM_OK;
  return rc;
}
