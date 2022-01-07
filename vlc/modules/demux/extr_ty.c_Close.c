
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_5__ {struct TYPE_5__* seq_table; struct TYPE_5__* rec_hdrs; int cc; int xds; } ;
typedef TYPE_2__ demux_sys_t ;


 int XdsExit (int *) ;
 int cc_Exit (int *) ;
 int free (TYPE_2__*) ;

__attribute__((used)) static void Close( vlc_object_t *p_this )
{
    demux_t *p_demux = (demux_t*)p_this;
    demux_sys_t *p_sys = p_demux->p_sys;

    XdsExit( &p_sys->xds );
    cc_Exit( &p_sys->cc );
    free( p_sys->rec_hdrs );
    free( p_sys->seq_table );
    free(p_sys);
}
