
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const* vlc_tick_t ;
typedef int video_format_t ;
typedef int const subpicture_t ;


 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int VLC_UNUSED (int) ;

__attribute__((used)) static int OSDTextValidate(subpicture_t *subpic,
                           bool has_src_changed, const video_format_t *fmt_src,
                           bool has_dst_changed, const video_format_t *fmt_dst,
                           vlc_tick_t ts)
{
    VLC_UNUSED(subpic); VLC_UNUSED(ts);
    VLC_UNUSED(fmt_src); VLC_UNUSED(has_src_changed);
    VLC_UNUSED(fmt_dst);

    if( !has_dst_changed )
        return VLC_SUCCESS;
    return VLC_EGENERIC;
}
