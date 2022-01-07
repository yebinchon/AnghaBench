
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* xMutexEnd ) () ;} ;
struct TYPE_4__ {scalar_t__ mutex_init; TYPE_1__ mutex; } ;


 int SQLITE_OK ;
 int stub1 () ;
 TYPE_2__ wrapped ;

__attribute__((used)) static int wrMutexEnd(void){
  wrapped.mutex.xMutexEnd();
  wrapped.mutex_init = 0;
  return SQLITE_OK;
}
