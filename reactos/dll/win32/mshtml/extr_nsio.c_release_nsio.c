
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * net_util ;
 int nsIIOService_Release (int *) ;
 int nsINetUtil_Release (int *) ;
 int * nsio ;

void release_nsio(void)
{
    if(net_util) {
        nsINetUtil_Release(net_util);
        net_util = ((void*)0);
    }

    if(nsio) {
        nsIIOService_Release(nsio);
        nsio = ((void*)0);
    }
}
