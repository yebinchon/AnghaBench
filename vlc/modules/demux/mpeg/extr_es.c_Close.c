
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_9__ {TYPE_4__* p_sys; } ;
typedef TYPE_3__ demux_t ;
struct TYPE_8__ {TYPE_4__* p_bits; } ;
struct TYPE_7__ {size_t i_count; TYPE_6__* p_entry; } ;
struct TYPE_10__ {int p_packetizer; TYPE_2__ mllt; TYPE_1__ chapters; scalar_t__ p_packetized_data; } ;
typedef TYPE_4__ demux_sys_t ;
struct TYPE_11__ {int p_seekpoint; } ;


 int TAB_CLEAN (size_t,TYPE_6__*) ;
 int block_ChainRelease (scalar_t__) ;
 int demux_PacketizerDestroy (int ) ;
 int free (TYPE_4__*) ;
 int vlc_seekpoint_Delete (int ) ;

__attribute__((used)) static void Close( vlc_object_t * p_this )
{
    demux_t *p_demux = (demux_t*)p_this;
    demux_sys_t *p_sys = p_demux->p_sys;

    if( p_sys->p_packetized_data )
        block_ChainRelease( p_sys->p_packetized_data );
    for( size_t i=0; i< p_sys->chapters.i_count; i++ )
        vlc_seekpoint_Delete( p_sys->chapters.p_entry[i].p_seekpoint );
    TAB_CLEAN( p_sys->chapters.i_count, p_sys->chapters.p_entry );
    if( p_sys->mllt.p_bits )
        free( p_sys->mllt.p_bits );
    demux_PacketizerDestroy( p_sys->p_packetizer );
    free( p_sys );
}
