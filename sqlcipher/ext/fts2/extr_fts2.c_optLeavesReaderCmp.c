
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int segment; } ;
typedef TYPE_1__ OptLeavesReader ;


 int optLeavesReaderTermCmp (TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static int optLeavesReaderCmp(OptLeavesReader *lr1, OptLeavesReader *lr2){
  int c = optLeavesReaderTermCmp(lr1, lr2);
  if( c!=0 ) return c;
  return lr1->segment-lr2->segment;
}
