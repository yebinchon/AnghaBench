
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* pFS; } ;
typedef TYPE_1__ lsm_db ;
struct TYPE_5__ {scalar_t__ fdLog; int pEnv; } ;
typedef TYPE_2__ FileSystem ;


 int lsmEnvClose (int ,scalar_t__) ;

void lsmFsCloseLog(lsm_db *db){
  FileSystem *pFS = db->pFS;
  if( pFS->fdLog ){
    lsmEnvClose(pFS->pEnv, pFS->fdLog);
    pFS->fdLog = 0;
  }
}
