
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_3__ {int fmt; } ;
struct heif_private_t {int p_title; TYPE_1__ current; scalar_t__ id; int p_root; } ;
struct TYPE_4__ {int out; scalar_t__ p_sys; } ;
typedef TYPE_2__ demux_t ;


 int MP4_BoxFree (int ) ;
 int es_format_Clean (int *) ;
 int es_out_Del (int ,scalar_t__) ;
 int free (struct heif_private_t*) ;
 int vlc_input_title_Delete (int ) ;

void CloseHEIF ( vlc_object_t * p_this )
{
    demux_t *p_demux = (demux_t *)p_this;
    struct heif_private_t *p_sys = (void *) p_demux->p_sys;
    MP4_BoxFree( p_sys->p_root );
    if( p_sys->id )
        es_out_Del( p_demux->out, p_sys->id );
    es_format_Clean( &p_sys->current.fmt );
    vlc_input_title_Delete( p_sys->p_title );
    free( p_sys );
}
