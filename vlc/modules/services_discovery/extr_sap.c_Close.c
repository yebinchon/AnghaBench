
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ services_discovery_t ;
struct TYPE_6__ {int i_fd; int i_announces; int * pp_announces; int * pi_fd; int thread; } ;
typedef TYPE_2__ services_discovery_sys_t ;


 int FREENULL (int *) ;
 int RemoveAnnounce (TYPE_1__*,int ) ;
 int free (TYPE_2__*) ;
 int net_Close (int ) ;
 int vlc_cancel (int ) ;
 int vlc_join (int ,int *) ;

__attribute__((used)) static void Close( vlc_object_t *p_this )
{
    services_discovery_t *p_sd = ( services_discovery_t* )p_this;
    services_discovery_sys_t *p_sys = p_sd->p_sys;
    int i;

    vlc_cancel (p_sys->thread);
    vlc_join (p_sys->thread, ((void*)0));

    for( i = p_sys->i_fd-1 ; i >= 0 ; i-- )
    {
        net_Close( p_sys->pi_fd[i] );
    }
    FREENULL( p_sys->pi_fd );

    for( i = p_sys->i_announces - 1; i>= 0; i-- )
    {
        RemoveAnnounce( p_sd, p_sys->pp_announces[i] );
    }
    FREENULL( p_sys->pp_announces );

    free( p_sys );
}
