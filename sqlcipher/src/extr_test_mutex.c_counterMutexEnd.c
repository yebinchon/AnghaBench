
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* xMutexEnd ) () ;} ;
struct TYPE_4__ {TYPE_1__ m; scalar_t__ isInit; } ;


 TYPE_2__ g ;
 int stub1 () ;

__attribute__((used)) static int counterMutexEnd(void){
  g.isInit = 0;
  return g.m.xMutexEnd();
}
