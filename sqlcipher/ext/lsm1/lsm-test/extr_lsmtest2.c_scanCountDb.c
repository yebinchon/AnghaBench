
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nRow; } ;
typedef TYPE_1__ Cksum ;


 int unused_parameter (int) ;

__attribute__((used)) static void scanCountDb(
  void *pCtx,
  void *pKey, int nKey,
  void *pVal, int nVal
){
  Cksum *p = (Cksum *)pCtx;
  p->nRow++;

  unused_parameter(pKey);
  unused_parameter(nKey);
  unused_parameter(pVal);
  unused_parameter(nVal);
}
