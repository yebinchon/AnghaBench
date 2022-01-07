
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int reader; } ;
typedef TYPE_1__ OptLeavesReader ;


 int leavesReaderTermCmp (int *,int *) ;

__attribute__((used)) static int optLeavesReaderTermCmp(OptLeavesReader *lr1, OptLeavesReader *lr2){
  return leavesReaderTermCmp(&lr1->reader, &lr2->reader);
}
