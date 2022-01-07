
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ nFile; int ioError; } ;


 int ASYNC_MUTEX_QUEUE ;
 int SQLITE_OK ;
 TYPE_1__ async ;
 int async_mutex_enter (int ) ;
 int async_mutex_leave (int ) ;

__attribute__((used)) static void incrOpenFileCount(void){

  async_mutex_enter(ASYNC_MUTEX_QUEUE);
  if( async.nFile==0 ){
    async.ioError = SQLITE_OK;
  }
  async.nFile++;
  async_mutex_leave(ASYNC_MUTEX_QUEUE);
}
