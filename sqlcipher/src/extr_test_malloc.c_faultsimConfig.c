
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int iCountdown; int nRepeat; int enable; scalar_t__ isBenignMode; scalar_t__ nOkAfter; scalar_t__ nOkBefore; scalar_t__ nFail; scalar_t__ nBenign; } ;


 TYPE_1__ memfault ;

__attribute__((used)) static void faultsimConfig(int nDelay, int nRepeat){
  memfault.iCountdown = nDelay;
  memfault.nRepeat = nRepeat;
  memfault.nBenign = 0;
  memfault.nFail = 0;
  memfault.nOkBefore = 0;
  memfault.nOkAfter = 0;
  memfault.enable = nDelay>=0;
  memfault.isBenignMode = 0;
}
