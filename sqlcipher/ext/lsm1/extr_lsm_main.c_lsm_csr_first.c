
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lsm_cursor ;
typedef int MultiCursor ;


 int lsmMCursorFirst (int *) ;

int lsm_csr_first(lsm_cursor *pCsr){
  return lsmMCursorFirst((MultiCursor *)pCsr);
}
