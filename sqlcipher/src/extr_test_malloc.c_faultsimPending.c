
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int iCountdown; scalar_t__ enable; } ;


 TYPE_1__ memfault ;

__attribute__((used)) static int faultsimPending(void){
  if( memfault.enable ){
    return memfault.iCountdown;
  }else{
    return -1;
  }
}
