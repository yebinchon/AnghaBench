
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int lsm_env ;
struct TYPE_3__ {int nArray; int nAlloc; int * aArray; } ;
typedef TYPE_1__ IntArray ;


 int LSM_NOMEM_BKPT ;
 int LSM_OK ;
 int assert (int) ;
 int * lsmRealloc (int *,int *,int) ;

__attribute__((used)) static int intArrayAppend(lsm_env *pEnv, IntArray *p, u32 iVal){
  assert( p->nArray<=p->nAlloc );
  if( p->nArray>=p->nAlloc ){
    u32 *aNew;
    int nNew = p->nArray ? p->nArray*2 : 128;
    aNew = lsmRealloc(pEnv, p->aArray, nNew*sizeof(u32));
    if( !aNew ) return LSM_NOMEM_BKPT;
    p->aArray = aNew;
    p->nAlloc = nNew;
  }

  p->aArray[p->nArray++] = iVal;
  return LSM_OK;
}
