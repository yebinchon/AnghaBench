
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_6__ {TYPE_2__* p_sys; int pf_control; int pf_demux; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_7__ {int i_link; } ;
typedef TYPE_2__ demux_sys_t ;


 int Control ;
 int Demux ;
 int DemuxOpen (int *) ;
 int InitCapture (TYPE_1__*) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int free (TYPE_2__*) ;
 int var_InheritInteger (TYPE_1__*,char*) ;

__attribute__((used)) static int Open( vlc_object_t *p_this )
{
    demux_t *p_demux = (demux_t *)p_this;
    demux_sys_t *p_sys;
    int i_ret;

    if ( (i_ret = DemuxOpen( p_this )) != VLC_SUCCESS )
        return i_ret;


    p_demux->pf_demux = Demux;
    p_demux->pf_control = Control;
    p_sys = p_demux->p_sys;

    p_sys->i_link = var_InheritInteger( p_demux, "linsys-sdi-link" );

    if( InitCapture( p_demux ) != VLC_SUCCESS )
    {
        free( p_sys );
        return VLC_EGENERIC;
    }

    return VLC_SUCCESS;
}
