
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* xSize ) (void*) ;} ;


 TYPE_1__ memtraceBase ;
 int stub1 (void*) ;

__attribute__((used)) static int memtraceSize(void *p){
  return memtraceBase.xSize(p);
}
