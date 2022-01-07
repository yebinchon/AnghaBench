
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int i64 ;
struct TYPE_3__ {scalar_t__ fdDb; int pEnv; } ;
typedef TYPE_1__ FileSystem ;


 int LSM_OK ;
 int lsmEnvTruncate (int ,scalar_t__,int ) ;

int lsmFsTruncateDb(FileSystem *pFS, i64 nByte){
  if( pFS->fdDb==0 ) return LSM_OK;
  return lsmEnvTruncate(pFS->pEnv, pFS->fdDb, nByte);
}
