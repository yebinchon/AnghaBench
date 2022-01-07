
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_9__ {scalar_t__ i_chroma; scalar_t__ i_width; scalar_t__ i_height; scalar_t__ orientation; } ;
struct TYPE_10__ {TYPE_3__ video; } ;
struct TYPE_7__ {scalar_t__ i_chroma; scalar_t__ i_width; scalar_t__ i_height; scalar_t__ orientation; } ;
struct TYPE_8__ {TYPE_1__ video; } ;
struct TYPE_11__ {TYPE_4__ fmt_out; TYPE_2__ fmt_in; } ;
typedef TYPE_5__ filter_t ;


 int Activate (TYPE_5__*,int ) ;
 int BuildChromaChain ;
 int BuildChromaResize ;
 int BuildTransformChain ;
 int VLC_EGENERIC ;

__attribute__((used)) static int ActivateConverter( vlc_object_t *p_this )
{
    filter_t *p_filter = (filter_t *)p_this;

    const bool b_chroma = p_filter->fmt_in.video.i_chroma != p_filter->fmt_out.video.i_chroma;
    const bool b_resize = p_filter->fmt_in.video.i_width != p_filter->fmt_out.video.i_width ||
                          p_filter->fmt_in.video.i_height != p_filter->fmt_out.video.i_height;

    const bool b_chroma_resize = b_chroma && b_resize;
    const bool b_transform = p_filter->fmt_in.video.orientation != p_filter->fmt_out.video.orientation;

    if( !b_chroma && !b_chroma_resize && !b_transform)
        return VLC_EGENERIC;

    return Activate( p_filter, b_transform ? BuildTransformChain :
                               b_chroma_resize ? BuildChromaResize :
                               BuildChromaChain );
}
