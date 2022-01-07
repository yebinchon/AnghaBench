
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ref; } ;
typedef TYPE_1__ httpd_host_t ;


 scalar_t__ atomic_load_explicit (int *,int ) ;
 int httpdLoop (TYPE_1__*) ;
 int memory_order_relaxed ;

__attribute__((used)) static void* httpd_HostThread(void *data)
{
    httpd_host_t *host = data;

    while (atomic_load_explicit(&host->ref, memory_order_relaxed) > 0)
        httpdLoop(host);
    return ((void*)0);
}
