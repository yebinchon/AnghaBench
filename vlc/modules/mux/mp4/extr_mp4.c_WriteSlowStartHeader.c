
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ sout_mux_t ;
struct TYPE_12__ {int i_pos; int i_mdat_pos; int muxh; } ;
typedef TYPE_2__ sout_mux_sys_t ;
struct TYPE_13__ {scalar_t__ b; } ;
typedef TYPE_3__ bo_t ;


 int QUICKTIME ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int bo_add_64be (TYPE_3__*,int ) ;
 scalar_t__ bo_size (TYPE_3__*) ;
 TYPE_3__* box_new (char*) ;
 int box_send (TYPE_1__*,TYPE_3__*) ;
 TYPE_3__* mp4mux_GetFtyp (int ) ;
 int mp4mux_Is (int ,int ) ;

__attribute__((used)) static int WriteSlowStartHeader(sout_mux_t *p_mux)
{
    sout_mux_sys_t *p_sys = p_mux->p_sys;
    bo_t *box;

    if (!mp4mux_Is(p_sys->muxh, QUICKTIME))
    {

        box = mp4mux_GetFtyp(p_sys->muxh);
        if(!box)
            return VLC_ENOMEM;

        p_sys->i_pos += bo_size(box);
        p_sys->i_mdat_pos = p_sys->i_pos;
        box_send(p_mux, box);
    }


    box = box_new("mdat");
    if(!box)
        return VLC_ENOMEM;

    bo_add_64be(box, 0);

    if(box->b)
        p_sys->i_pos += bo_size(box);

    box_send(p_mux, box);

    return VLC_SUCCESS;
}
