
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct block_extension_t {int b_progressive; int i_nb_fields; int b_top_field_first; scalar_t__ i_aspect; } ;
struct TYPE_5__ {int out; TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_6__ {int i_block_size; TYPE_3__* p_current_picture; int p_es_video; int i_next_date; scalar_t__ i_aspect; scalar_t__ i_forced_aspect; } ;
typedef TYPE_2__ demux_sys_t ;
struct TYPE_7__ {int i_pts; int i_dts; int * p_buffer; } ;


 int es_out_Send (int ,int ,TYPE_3__*) ;
 int memcpy (int *,struct block_extension_t*,int) ;

__attribute__((used)) static void DecodeVideo( demux_t *p_demux )
{
    demux_sys_t *p_sys = p_demux->p_sys;
    struct block_extension_t ext;


    ext.b_progressive = 0;
    ext.i_nb_fields = 2;
    ext.b_top_field_first = 1;
    ext.i_aspect = p_sys->i_forced_aspect ? p_sys->i_forced_aspect :
                   p_sys->i_aspect;

    memcpy( &p_sys->p_current_picture->p_buffer[p_sys->i_block_size
                                     - sizeof(struct block_extension_t)],
            &ext, sizeof(struct block_extension_t) );

    p_sys->p_current_picture->i_dts = p_sys->p_current_picture->i_pts
        = p_sys->i_next_date;
    es_out_Send( p_demux->out, p_sys->p_es_video, p_sys->p_current_picture );
}
