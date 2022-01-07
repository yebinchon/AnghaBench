
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ nCount; scalar_t__ nFail; scalar_t__ bPersist; } ;


 TYPE_1__ gSyscall ;

__attribute__((used)) static int tsIsFail(void){
  gSyscall.nCount--;
  if( gSyscall.nCount==0 || (gSyscall.nFail && gSyscall.bPersist) ){
    gSyscall.nFail++;
    return 1;
  }
  return 0;
}
