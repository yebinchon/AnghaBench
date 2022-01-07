
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int reader; } ;
typedef TYPE_1__ OptLeavesReader ;


 int leavesReaderTermBytes (int *) ;

__attribute__((used)) static int optLeavesReaderTermBytes(OptLeavesReader *pReader){
  return leavesReaderTermBytes(&pReader->reader);
}
