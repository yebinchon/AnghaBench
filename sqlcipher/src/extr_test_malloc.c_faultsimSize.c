
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* xSize ) (void*) ;} ;
struct TYPE_4__ {TYPE_1__ m; } ;


 TYPE_2__ memfault ;
 int stub1 (void*) ;

__attribute__((used)) static int faultsimSize(void *p){
  return memfault.m.xSize(p);
}
