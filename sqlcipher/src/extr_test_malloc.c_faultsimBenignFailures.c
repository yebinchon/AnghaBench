
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nBenign; } ;


 TYPE_1__ memfault ;

__attribute__((used)) static int faultsimBenignFailures(void){
  return memfault.nBenign;
}
