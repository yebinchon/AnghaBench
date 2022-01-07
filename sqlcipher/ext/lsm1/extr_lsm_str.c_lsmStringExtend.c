
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int n; int nAlloc; char* z; int pEnv; } ;
typedef TYPE_1__ LsmString ;


 int LSM_NOMEM ;
 int LSM_NOMEM_BKPT ;
 int LSM_OK ;
 int assert (int) ;
 int lsmFree (int ,char*) ;
 char* lsmRealloc (int ,char*,int) ;

int lsmStringExtend(LsmString *pStr, int nNew){
  assert( nNew>0 );
  if( pStr->n<0 ) return LSM_NOMEM;
  if( pStr->n + nNew >= pStr->nAlloc ){
    int nAlloc = pStr->n + nNew + 100;
    char *zNew = lsmRealloc(pStr->pEnv, pStr->z, nAlloc);
    if( zNew==0 ){
      lsmFree(pStr->pEnv, pStr->z);
      nAlloc = 0;
      pStr->n = -1;
    }
    pStr->nAlloc = nAlloc;
    pStr->z = zNew;
  }
  return (pStr->z ? LSM_OK : LSM_NOMEM_BKPT);
}
