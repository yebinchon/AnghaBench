
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_14__ {scalar_t__ b_reorder; int i_708channels; int i_608channels; int i_data; int p_data; } ;
struct TYPE_11__ {int i_cc_flags; TYPE_5__ cc; int i_cc_dts; int i_cc_pts; } ;
typedef TYPE_2__ decoder_sys_t ;
struct TYPE_12__ {int i_reorder_depth; int i_708_channels; int i_608_channels; } ;
typedef TYPE_3__ decoder_cc_desc_t ;
struct TYPE_13__ {int i_flags; int i_pts; int i_dts; int p_buffer; } ;
typedef TYPE_4__ block_t ;


 int BLOCK_FLAG_TYPE_MASK ;
 TYPE_4__* block_Alloc (int ) ;
 int cc_Flush (TYPE_5__*) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static block_t *GetCc( decoder_t *p_dec, decoder_cc_desc_t *p_desc )
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    block_t *p_cc;

    p_cc = block_Alloc( p_sys->cc.i_data);
    if( p_cc )
    {
        memcpy( p_cc->p_buffer, p_sys->cc.p_data, p_sys->cc.i_data );
        p_cc->i_dts =
        p_cc->i_pts = p_sys->cc.b_reorder ? p_sys->i_cc_pts : p_sys->i_cc_dts;
        p_cc->i_flags = p_sys->i_cc_flags & BLOCK_FLAG_TYPE_MASK;

        p_desc->i_608_channels = p_sys->cc.i_608channels;
        p_desc->i_708_channels = p_sys->cc.i_708channels;
        p_desc->i_reorder_depth = p_sys->cc.b_reorder ? 4 : -1;
    }
    cc_Flush( &p_sys->cc );
    return p_cc;
}
