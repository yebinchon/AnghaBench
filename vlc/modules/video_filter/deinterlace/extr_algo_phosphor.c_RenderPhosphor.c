
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int picture_t ;
struct TYPE_13__ {scalar_t__ i_chroma; } ;
struct TYPE_14__ {TYPE_2__ video; } ;
struct TYPE_19__ {TYPE_3__ fmt_in; TYPE_9__* p_sys; } ;
typedef TYPE_8__ filter_t ;
struct TYPE_15__ {int i_chroma_for_420; scalar_t__ i_dimmer_strength; } ;
struct TYPE_12__ {int ** pp_history; } ;
struct TYPE_20__ {TYPE_7__* chroma; TYPE_4__ phosphor; TYPE_1__ context; } ;
typedef TYPE_9__ filter_sys_t ;
typedef int compose_chroma_t ;
struct TYPE_18__ {TYPE_6__* p; } ;
struct TYPE_16__ {int num; int den; } ;
struct TYPE_17__ {TYPE_5__ h; } ;


 int CC_ALTLINE ;
 int CC_MERGE ;
 int CC_SOURCE_BOTTOM ;
 int CC_SOURCE_TOP ;
 int CC_UPCONVERT ;
 int ComposeFrame (TYPE_8__*,int *,int *,int *,int ,int) ;
 int DarkenField (int *,int,scalar_t__,int) ;
 int DarkenFieldMMX (int *,int,scalar_t__,int) ;
 int HISTORY_SIZE ;




 scalar_t__ VLC_CODEC_YV12 ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int VLC_UNUSED (int *) ;
 int assert (int) ;
 scalar_t__ vlc_CPU_MMXEXT () ;
 int vlc_assert_unreachable () ;

int RenderPhosphor( filter_t *p_filter,
                    picture_t *p_dst, picture_t *p_pic,
                    int i_order, int i_field )
{
    VLC_UNUSED(p_pic);
    assert( p_filter != ((void*)0) );
    assert( p_dst != ((void*)0) );
    assert( i_order >= 0 && i_order <= 2 );
    assert( i_field == 0 || i_field == 1 );

    filter_sys_t *p_sys = p_filter->p_sys;


    picture_t *p_in = p_sys->context.pp_history[HISTORY_SIZE-1];
    picture_t *p_old = p_sys->context.pp_history[HISTORY_SIZE-2];


    if( !p_old )
        p_old = p_in;


    if( !p_in )
        return VLC_EGENERIC;

    assert( p_old != ((void*)0) );
    assert( p_in != ((void*)0) );


    picture_t *p_in_top = p_in;
    picture_t *p_in_bottom = p_in;


    if( i_order == 0 )
    {
        if( i_field == 0 )
            p_in_bottom = p_old;
        else
            p_in_top = p_old;
    }

    compose_chroma_t cc = CC_ALTLINE;
    if( 2 * p_sys->chroma->p[1].h.num == p_sys->chroma->p[1].h.den &&
        2 * p_sys->chroma->p[2].h.num == p_sys->chroma->p[2].h.den )
    {

        switch( p_sys->phosphor.i_chroma_for_420 )
        {
        case 130:
            cc = CC_MERGE;
            break;
        case 129:
            if( i_field == 0 )
                cc = CC_SOURCE_TOP;
            else
                cc = CC_SOURCE_BOTTOM;
            break;
        case 131:
            cc = CC_ALTLINE;
            break;
        case 128:
            cc = CC_UPCONVERT;
            break;
        default:

            vlc_assert_unreachable();
            break;
        }
    }
    ComposeFrame( p_filter, p_dst, p_in_top, p_in_bottom, cc, p_filter->fmt_in.video.i_chroma == VLC_CODEC_YV12 );
    if( p_sys->phosphor.i_dimmer_strength > 0 )
    {







            DarkenField( p_dst, !i_field, p_sys->phosphor.i_dimmer_strength,
                p_sys->chroma->p[1].h.num == p_sys->chroma->p[1].h.den &&
                p_sys->chroma->p[2].h.num == p_sys->chroma->p[2].h.den );
    }
    return VLC_SUCCESS;
}
