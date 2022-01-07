
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int va_list ;
struct TYPE_4__ {int nAlloc; int n; char* z; } ;
typedef TYPE_1__ LsmString ;


 int lsmStringExtend (TYPE_1__*,int) ;

void lsmStringVAppendf(
  LsmString *pStr,
  const char *zFormat,
  va_list ap1,
  va_list ap2
){
  int nWrite;
  int nAvail;

  nAvail = pStr->nAlloc - pStr->n;
  nWrite = vsnprintf(pStr->z + pStr->n, nAvail, zFormat, ap1);

  if( nWrite>=nAvail ){
    lsmStringExtend(pStr, nWrite+1);
    if( pStr->nAlloc==0 ) return;
    nWrite = vsnprintf(pStr->z + pStr->n, nWrite+1, zFormat, ap2);
  }

  pStr->n += nWrite;
  pStr->z[pStr->n] = 0;
}
