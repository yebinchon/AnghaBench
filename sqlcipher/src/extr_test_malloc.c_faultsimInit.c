
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* xInit ) (int ) ;int pAppData; } ;
struct TYPE_4__ {TYPE_1__ m; } ;


 TYPE_2__ memfault ;
 int stub1 (int ) ;

__attribute__((used)) static int faultsimInit(void *p){
  return memfault.m.xInit(memfault.m.pAppData);
}
