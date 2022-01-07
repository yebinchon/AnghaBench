
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct discovery_sys {int p_microdns; int thread; int stop; } ;


 int atomic_store (int *,int) ;
 int free (struct discovery_sys*) ;
 int items_clear (struct discovery_sys*) ;
 int mdns_destroy (int ) ;
 int vlc_join (int ,int *) ;

__attribute__((used)) static void
CleanCommon( struct discovery_sys *p_sys )
{
    atomic_store( &p_sys->stop, 1 );
    vlc_join( p_sys->thread, ((void*)0) );

    items_clear( p_sys );
    mdns_destroy( p_sys->p_microdns );
    free( p_sys );
}
