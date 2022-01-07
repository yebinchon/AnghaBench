
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lsm_cursor ;
typedef int MultiCursor ;


 int lsmMCursorKey (int *,void**,int*) ;

int lsm_csr_key(lsm_cursor *pCsr, const void **ppKey, int *pnKey){
  return lsmMCursorKey((MultiCursor *)pCsr, (void **)ppKey, pnKey);
}
