
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fd; int lock; int wait; int thread; int * first; } ;
typedef TYPE_1__ sap_address_t ;


 int assert (int ) ;
 int free (TYPE_1__*) ;
 int net_Close (int ) ;
 int vlc_cancel (int ) ;
 int vlc_cond_destroy (int *) ;
 int vlc_join (int ,int *) ;
 int vlc_mutex_destroy (int *) ;

__attribute__((used)) static void AddressDestroy (sap_address_t *addr)
{
    assert (addr->first == ((void*)0));

    vlc_cancel (addr->thread);
    vlc_join (addr->thread, ((void*)0));
    vlc_cond_destroy (&addr->wait);
    vlc_mutex_destroy (&addr->lock);
    net_Close (addr->fd);
    free (addr);
}
