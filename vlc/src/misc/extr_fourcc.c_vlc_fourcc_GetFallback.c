
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_fourcc_t ;


 int const* vlc_fourcc_GetRGBFallback (int ) ;
 int const* vlc_fourcc_GetYUVFallback (int ) ;
 scalar_t__ vlc_fourcc_IsYUV (int ) ;

const vlc_fourcc_t *vlc_fourcc_GetFallback( vlc_fourcc_t i_fourcc )
{
    return vlc_fourcc_IsYUV( i_fourcc)
            ? vlc_fourcc_GetYUVFallback( i_fourcc )
            : vlc_fourcc_GetRGBFallback( i_fourcc );
}
