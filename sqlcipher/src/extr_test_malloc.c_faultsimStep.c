
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ iCountdown; scalar_t__ nFail; scalar_t__ isBenignMode; scalar_t__ nRepeat; scalar_t__ enable; int nBenign; int nOkBefore; int nOkAfter; } ;


 scalar_t__ likely (int) ;
 TYPE_1__ memfault ;
 int sqlite3Fault () ;
 int sqlite3FirstFault () ;

__attribute__((used)) static int faultsimStep(void){
  if( likely(!memfault.enable) ){
    memfault.nOkAfter++;
    return 0;
  }
  if( memfault.iCountdown>0 ){
    memfault.iCountdown--;
    memfault.nOkBefore++;
    return 0;
  }
  if( memfault.nFail==0 ) sqlite3FirstFault();
  sqlite3Fault();
  memfault.nFail++;
  if( memfault.isBenignMode>0 ){
    memfault.nBenign++;
  }
  memfault.nRepeat--;
  if( memfault.nRepeat<=0 ){
    memfault.enable = 0;
  }
  return 1;
}
