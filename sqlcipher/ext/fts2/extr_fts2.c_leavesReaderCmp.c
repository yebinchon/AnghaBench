
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int idx; } ;
typedef TYPE_1__ LeavesReader ;


 int leavesReaderTermCmp (TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static int leavesReaderCmp(LeavesReader *lr1, LeavesReader *lr2){
  int c = leavesReaderTermCmp(lr1, lr2);
  if( c!=0 ) return c;
  return lr1->idx-lr2->idx;
}
