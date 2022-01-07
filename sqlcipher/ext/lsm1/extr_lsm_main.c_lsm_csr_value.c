
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lsm_cursor ;
typedef int MultiCursor ;


 int lsmMCursorValue (int *,void**,int*) ;

int lsm_csr_value(lsm_cursor *pCsr, const void **ppVal, int *pnVal){
  return lsmMCursorValue((MultiCursor *)pCsr, (void **)ppVal, pnVal);
}
