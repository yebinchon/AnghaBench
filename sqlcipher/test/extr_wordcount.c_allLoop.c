
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MODE_ALL ;
 int MODE_COUNT ;

__attribute__((used)) static int allLoop(
  int iMode,
  int *piLoopCnt,
  int *piMode2,
  int *pUseWithoutRowid
){
  int i;
  if( iMode!=MODE_ALL ){
    if( *piLoopCnt ) return 0;
    *piMode2 = iMode;
    *piLoopCnt = 1;
    return 1;
  }
  if( (*piLoopCnt)>=MODE_COUNT*2 ) return 0;
  i = (*piLoopCnt)++;
  *pUseWithoutRowid = i&1;
  *piMode2 = i>>1;
  return 1;
}
