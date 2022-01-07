
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* (* xRealloc ) (void*,int) ;} ;
struct TYPE_4__ {TYPE_1__ m; } ;


 int faultsimStep () ;
 TYPE_2__ memfault ;
 void* stub1 (void*,int) ;

__attribute__((used)) static void *faultsimRealloc(void *pOld, int n){
  void *p = 0;
  if( !faultsimStep() ){
    p = memfault.m.xRealloc(pOld, n);
  }
  return p;
}
