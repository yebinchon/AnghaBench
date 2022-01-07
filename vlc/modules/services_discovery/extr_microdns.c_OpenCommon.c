
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_object_t ;
struct discovery_sys {scalar_t__ i_nb_service_names; int * p_microdns; int thread; int * ppsz_service_names; int items; int stop; } ;
struct TYPE_2__ {int b_renderer; int psz_service_name; } ;


 int MDNS_ADDR_IPV4 ;
 int MDNS_PORT ;
 unsigned int NB_PROTOCOLS ;
 int RunRD ;
 int RunSD ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int VLC_THREAD_PRIORITY_LOW ;
 int atomic_init (int *,int) ;
 int free (struct discovery_sys*) ;
 int mdns_destroy (int *) ;
 int mdns_init (int **,int ,int ) ;
 int msg_Dbg (int *,char*,int ,char*) ;
 int msg_Err (int *,char*) ;
 int print_error (int *,char*,int) ;
 TYPE_1__* protocols ;
 int vlc_array_init (int *) ;
 scalar_t__ vlc_clone (int *,int ,int *,int ) ;

__attribute__((used)) static int
OpenCommon( vlc_object_t *p_obj, struct discovery_sys *p_sys, bool b_renderer )
{
    int i_ret = VLC_EGENERIC;
    atomic_init( &p_sys->stop, 0 );
    vlc_array_init( &p_sys->items );


    for( unsigned int i = 0; i < NB_PROTOCOLS; ++i )
    {
        if( protocols[i].b_renderer == b_renderer )
            p_sys->ppsz_service_names[p_sys->i_nb_service_names++] =
                protocols[i].psz_service_name;
    }

    if( p_sys->i_nb_service_names == 0 )
    {
        msg_Err( p_obj, "no services found" );
        goto error;
    }
    for( unsigned int i = 0; i < p_sys->i_nb_service_names; ++i )
        msg_Dbg( p_obj, "mDNS: listening to %s %s", p_sys->ppsz_service_names[i],
                 b_renderer ? "renderer" : "service" );

    int i_status;
    if( ( i_status = mdns_init( &p_sys->p_microdns, MDNS_ADDR_IPV4,
                                MDNS_PORT ) ) < 0 )
    {
        print_error( p_obj, "init", i_status );
        goto error;
    }

    if( vlc_clone( &p_sys->thread, b_renderer ? RunRD : RunSD, p_obj,
                   VLC_THREAD_PRIORITY_LOW) )
    {
        msg_Err( p_obj, "Can't run the lookup thread" );
        goto error;
    }

    return VLC_SUCCESS;
error:
    if( p_sys->p_microdns != ((void*)0) )
        mdns_destroy( p_sys->p_microdns );
    free( p_sys );
    return i_ret;
}
