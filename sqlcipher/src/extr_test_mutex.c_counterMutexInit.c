
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* xMutexInit ) () ;} ;
struct TYPE_4__ {int disableInit; int isInit; TYPE_1__ m; } ;


 TYPE_2__ g ;
 int stub1 () ;

__attribute__((used)) static int counterMutexInit(void){
  int rc;
  if( g.disableInit ) return g.disableInit;
  rc = g.m.xMutexInit();
  g.isInit = 1;
  return rc;
}
