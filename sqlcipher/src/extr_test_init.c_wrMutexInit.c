
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* xMutexInit ) () ;} ;
struct TYPE_4__ {int mutex_init; TYPE_1__ mutex; scalar_t__ mutex_fail; } ;


 int SQLITE_ERROR ;
 int SQLITE_OK ;
 int stub1 () ;
 TYPE_2__ wrapped ;

__attribute__((used)) static int wrMutexInit(void){
  int rc;
  if( wrapped.mutex_fail ){
    rc = SQLITE_ERROR;
  }else{
    rc = wrapped.mutex.xMutexInit();
  }
  if( rc==SQLITE_OK ){
    wrapped.mutex_init = 1;
  }
  return rc;
}
