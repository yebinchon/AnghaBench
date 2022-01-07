
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int i64 ;
struct TYPE_2__ {int iFrom; int iSeen; } ;
typedef TYPE_1__ MoveBlockCtx ;


 int assert (int) ;

__attribute__((used)) static int moveBlockCb(void *pCtx, int iBlk, i64 iSnapshot){
  MoveBlockCtx *p = (MoveBlockCtx *)pCtx;
  assert( p->iFrom==0 );
  if( iBlk==(p->iSeen-1) ){
    p->iSeen = iBlk;
    return 0;
  }
  p->iFrom = p->iSeen-1;
  return 1;
}
