
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct discovery_sys* p_sys; } ;
typedef TYPE_1__ vlc_renderer_discovery_t ;
struct discovery_sys {int i_nb_service_names; int ppsz_service_names; int p_microdns; } ;


 int LISTEN_INTERVAL ;
 int RR_PTR ;
 int SEC_FROM_VLC_TICK (int ) ;
 int VLC_OBJECT (TYPE_1__*) ;
 int mdns_listen (int ,int ,int ,int ,int ,int ,int ,TYPE_1__*) ;
 int new_entries_rd_cb ;
 int print_error (int ,char*,int) ;
 int stop_rd_cb ;

__attribute__((used)) static void *
RunRD( void *p_this )
{
    vlc_renderer_discovery_t *p_rd = p_this;
    struct discovery_sys *p_sys = p_rd->p_sys;

    int i_status = mdns_listen( p_sys->p_microdns,
                                p_sys->ppsz_service_names,
                                p_sys->i_nb_service_names,
                                RR_PTR, SEC_FROM_VLC_TICK(LISTEN_INTERVAL),
                                stop_rd_cb, new_entries_rd_cb, p_rd );

    if( i_status < 0 )
        print_error( VLC_OBJECT( p_rd ), "listen", i_status );

    return ((void*)0);
}
