
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UCollator ;
typedef int UCollationResult ;
typedef int UChar ;





 int assert (int) ;
 int ucol_strcoll (int *,int *,int,int *,int) ;

__attribute__((used)) static int icuCollationColl(
  void *pCtx,
  int nLeft,
  const void *zLeft,
  int nRight,
  const void *zRight
){
  UCollationResult res;
  UCollator *p = (UCollator *)pCtx;
  res = ucol_strcoll(p, (UChar *)zLeft, nLeft/2, (UChar *)zRight, nRight/2);
  switch( res ){
    case 128: return -1;
    case 129: return +1;
    case 130: return 0;
  }
  assert(!"Unexpected return value from ucol_strcoll()");
  return 0;
}
