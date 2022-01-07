
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_vfs ;
struct TYPE_2__ {scalar_t__ pAppData; } ;


 int async_os_shutdown () ;
 TYPE_1__ async_vfs ;
 int sqlite3_vfs_unregister (int *) ;

void sqlite3async_shutdown(void){
  if( async_vfs.pAppData ){
    async_os_shutdown();
    sqlite3_vfs_unregister((sqlite3_vfs *)&async_vfs);
    async_vfs.pAppData = 0;
  }
}
