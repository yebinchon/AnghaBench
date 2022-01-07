
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_5__ {struct TYPE_5__* psz_mcast_ip; struct TYPE_5__* psz_password; struct TYPE_5__* psz_user; struct TYPE_5__* psz_name; struct TYPE_5__* psz_location; struct TYPE_5__* psz_server; struct TYPE_5__* psz_uri; } ;
typedef TYPE_2__ demux_sys_t ;


 int free (TYPE_2__*) ;

void Close_SGIMB( vlc_object_t *p_this )
{
    stream_t *p_demux = (stream_t*)p_this;
    demux_sys_t *p_sys = p_demux->p_sys;
    free( p_sys->psz_uri );
    free( p_sys->psz_server );
    free( p_sys->psz_location );
    free( p_sys->psz_name );
    free( p_sys->psz_user );
    free( p_sys->psz_password );
    free( p_sys->psz_mcast_ip );
    free( p_demux->p_sys );
    return;
}
