
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int i64 ;
struct TYPE_7__ {int fdLog; int pEnv; } ;
struct TYPE_6__ {size_t n; int * z; } ;
typedef TYPE_1__ LsmString ;
typedef TYPE_2__ FileSystem ;


 int LSM_OK ;
 int assert (int ) ;
 int lsmEnvRead (int ,int ,int ,int *,int) ;
 int lsmStringExtend (TYPE_1__*,int) ;

int lsmFsReadLog(FileSystem *pFS, i64 iOff, int nRead, LsmString *pStr){
  int rc;
  assert( pFS->fdLog );
  rc = lsmStringExtend(pStr, nRead);
  if( rc==LSM_OK ){
    rc = lsmEnvRead(pFS->pEnv, pFS->fdLog, iOff, &pStr->z[pStr->n], nRead);
    pStr->n += nRead;
  }
  return rc;
}
