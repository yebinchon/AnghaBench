
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


typedef scalar_t__ vlc_tick_t ;
struct TYPE_17__ {scalar_t__ i_frame_rate_base; scalar_t__ i_frame_rate; } ;
struct TYPE_18__ {TYPE_3__ video; } ;
struct TYPE_19__ {TYPE_4__ fmt_out; TYPE_6__* p_sys; } ;
typedef TYPE_5__ decoder_t ;
struct TYPE_16__ {int b_has_bframe; int p_sh; } ;
struct TYPE_15__ {int p_ep; } ;
struct TYPE_20__ {scalar_t__ i_frame_dts; scalar_t__ i_frame_pts; int i_cc_flags; int b_frame; TYPE_7__* p_frame; TYPE_7__** pp_last; int cc_next; int cc; scalar_t__ i_cc_dts; scalar_t__ i_cc_pts; int dts; TYPE_2__ sh; TYPE_1__ ep; } ;
typedef TYPE_6__ decoder_sys_t ;
struct TYPE_21__ {int i_flags; scalar_t__ i_dts; scalar_t__ i_pts; } ;
typedef TYPE_7__ block_t ;


 int const BLOCK_FLAG_TYPE_B ;
 int const BLOCK_FLAG_TYPE_I ;
 scalar_t__ VLC_TICK_INVALID ;
 int block_ChainAppend (TYPE_7__**,TYPE_7__*) ;
 TYPE_7__* block_ChainGather (TYPE_7__*) ;
 TYPE_7__* block_Duplicate (int ) ;
 int cc_Flush (int *) ;
 scalar_t__ date_Get (int *) ;
 int date_Increment (int *,int) ;
 int date_Set (int *,scalar_t__) ;

__attribute__((used)) static block_t *OutputFrame( decoder_t *p_dec )
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    const int i_pic_flags = p_sys->p_frame->i_flags;


    if( i_pic_flags & BLOCK_FLAG_TYPE_I )
    {
        block_t *p_list = block_Duplicate( p_sys->sh.p_sh );
        block_t *p_ep = block_Duplicate( p_sys->ep.p_ep );
        if( p_ep )
            block_ChainAppend( &p_list, p_ep );
        block_ChainAppend( &p_list, p_sys->p_frame );
        p_list->i_flags = i_pic_flags;
        p_sys->p_frame = p_list;
    }

    vlc_tick_t i_dts = p_sys->i_frame_dts;
    vlc_tick_t i_pts = p_sys->i_frame_pts;


    block_t *p_pic = block_ChainGather( p_sys->p_frame );
    if( p_pic )
    {
        p_pic->i_dts = p_sys->i_frame_dts;
        p_pic->i_pts = p_sys->i_frame_pts;
    }


    if( i_dts == VLC_TICK_INVALID )
        i_dts = date_Get( &p_sys->dts );
    else
        date_Set( &p_sys->dts, i_dts );

    if( i_pts == VLC_TICK_INVALID )
    {
        if( !p_sys->sh.b_has_bframe || (i_pic_flags & BLOCK_FLAG_TYPE_B ) )
            i_pts = i_dts;

    }

    if( p_pic )
    {
        p_pic->i_dts = i_dts;
        p_pic->i_pts = i_pts;
    }




    if( p_dec->fmt_out.video.i_frame_rate && p_dec->fmt_out.video.i_frame_rate_base )
    {
        date_Increment( &p_sys->dts, 2 );


    }


    p_sys->i_cc_pts = i_pts;
    p_sys->i_cc_dts = i_dts;
    p_sys->i_cc_flags = i_pic_flags;

    p_sys->cc = p_sys->cc_next;
    cc_Flush( &p_sys->cc_next );


    p_sys->b_frame = 0;
    p_sys->i_frame_dts = VLC_TICK_INVALID;
    p_sys->i_frame_pts = VLC_TICK_INVALID;
    p_sys->p_frame = ((void*)0);
    p_sys->pp_last = &p_sys->p_frame;

    return p_pic;
}
