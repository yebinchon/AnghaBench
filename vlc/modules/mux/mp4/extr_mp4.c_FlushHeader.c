
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_15__ {scalar_t__ p_sys; } ;
typedef TYPE_2__ sout_mux_t ;
struct TYPE_16__ {int i_pos; int b_header_sent; int muxh; } ;
typedef TYPE_3__ sout_mux_sys_t ;
struct TYPE_17__ {TYPE_1__* b; } ;
typedef TYPE_4__ bo_t ;
struct TYPE_14__ {int i_flags; } ;


 int BLOCK_FLAG_HEADER ;
 int VLC_OBJECT (TYPE_2__*) ;
 scalar_t__ bo_size (TYPE_4__*) ;
 int box_gather (TYPE_4__*,TYPE_4__*) ;
 int box_send (TYPE_2__*,TYPE_4__*) ;
 TYPE_4__* mp4mux_GetFtyp (int ) ;
 TYPE_4__* mp4mux_GetMoov (int ,int ,int ) ;
 int mp4mux_Set64BitExt (int ) ;

__attribute__((used)) static void FlushHeader(sout_mux_t *p_mux)
{
    sout_mux_sys_t *p_sys = (sout_mux_sys_t*) p_mux->p_sys;

    if(p_sys->i_pos >= (((uint64_t)0x1) << 32))
        mp4mux_Set64BitExt(p_sys->muxh);


    bo_t *ftyp = mp4mux_GetFtyp(p_sys->muxh);
    if(!ftyp)
        return;

    bo_t *moov = mp4mux_GetMoov(p_sys->muxh, VLC_OBJECT(p_mux), 0);


    box_gather(ftyp, moov);


    ftyp->b->i_flags |= BLOCK_FLAG_HEADER;
    p_sys->i_pos += bo_size(ftyp);
    box_send(p_mux, ftyp);
    p_sys->b_header_sent = 1;
}
