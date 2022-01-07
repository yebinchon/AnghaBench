
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_17__ {size_t i_bytes_per_frame; int i_channels; } ;
struct TYPE_18__ {TYPE_3__ audio; } ;
struct TYPE_15__ {int i_channels; } ;
struct TYPE_16__ {TYPE_1__ audio; } ;
struct TYPE_19__ {TYPE_4__ fmt_out; TYPE_2__ fmt_in; scalar_t__ p_sys; } ;
typedef TYPE_5__ filter_t ;
struct TYPE_20__ {int (* pf_remap ) (TYPE_5__*,void const*,void*,size_t,int ,int ) ;} ;
typedef TYPE_6__ filter_sys_t ;
struct TYPE_21__ {size_t i_nb_samples; scalar_t__ p_buffer; int i_length; int i_pts; int i_dts; } ;
typedef TYPE_7__ block_t ;


 TYPE_7__* block_Alloc (size_t) ;
 int block_Release (TYPE_7__*) ;
 int memset (scalar_t__,int ,size_t) ;
 int msg_Warn (TYPE_5__*,char*) ;
 int stub1 (TYPE_5__*,void const*,void*,size_t,int ,int ) ;

__attribute__((used)) static block_t *Remap( filter_t *p_filter, block_t *p_block )
{
    filter_sys_t *p_sys = (filter_sys_t *)p_filter->p_sys;
    if( !p_block || !p_block->i_nb_samples )
    {
        if( p_block )
            block_Release( p_block );
        return ((void*)0);
    }

    size_t i_out_size = p_block->i_nb_samples *
        p_filter->fmt_out.audio.i_bytes_per_frame;

    block_t *p_out = block_Alloc( i_out_size );
    if( !p_out )
    {
        msg_Warn( p_filter, "can't get output buffer" );
        block_Release( p_block );
        return ((void*)0);
    }
    p_out->i_nb_samples = p_block->i_nb_samples;
    p_out->i_dts = p_block->i_dts;
    p_out->i_pts = p_block->i_pts;
    p_out->i_length = p_block->i_length;

    memset( p_out->p_buffer, 0, i_out_size );

    p_sys->pf_remap( p_filter,
                (const void *)p_block->p_buffer, (void *)p_out->p_buffer,
                p_block->i_nb_samples,
                p_filter->fmt_in.audio.i_channels,
                p_filter->fmt_out.audio.i_channels );

    block_Release( p_block );

    return p_out;
}
