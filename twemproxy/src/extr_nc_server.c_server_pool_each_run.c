
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rstatus_t ;


 int server_pool_run (void*) ;

__attribute__((used)) static rstatus_t
server_pool_each_run(void *elem, void *data)
{
    return server_pool_run(elem);
}
