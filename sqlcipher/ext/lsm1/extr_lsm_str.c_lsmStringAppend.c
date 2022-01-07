
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ n; scalar_t__ z; scalar_t__ nAlloc; } ;
typedef TYPE_1__ LsmString ;


 int lsmStringExtend (TYPE_1__*,int) ;
 int memcpy (scalar_t__,char const*,int) ;
 scalar_t__ strlen (char const*) ;

int lsmStringAppend(LsmString *pStr, const char *z, int N){
  int rc;
  if( N<0 ) N = (int)strlen(z);
  rc = lsmStringExtend(pStr, N+1);
  if( pStr->nAlloc ){
    memcpy(pStr->z+pStr->n, z, N+1);
    pStr->n += N;
  }
  return rc;
}
