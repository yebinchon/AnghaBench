
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int filter_t ;


 int ANDROID_FALLBACK_FONTS ;
 int ANDROID_SYSTEM_FONTS_LEGACY ;
 int ANDROID_SYSTEM_FONTS_NOUGAT ;
 int ANDROID_VENDOR_FONTS ;
 scalar_t__ Android_ParseSystemFonts (int *,int ,int) ;
 scalar_t__ VLC_ENOMEM ;
 scalar_t__ VLC_SUCCESS ;

int Android_Prepare( filter_t *p_filter )
{
    if( Android_ParseSystemFonts( p_filter, ANDROID_SYSTEM_FONTS_NOUGAT, 1 ) != VLC_SUCCESS )
    {
        if( Android_ParseSystemFonts( p_filter, ANDROID_SYSTEM_FONTS_LEGACY, 0 ) == VLC_ENOMEM )
            return VLC_ENOMEM;
        if( Android_ParseSystemFonts( p_filter, ANDROID_FALLBACK_FONTS, 0 ) == VLC_ENOMEM )
            return VLC_ENOMEM;
        if( Android_ParseSystemFonts( p_filter, ANDROID_VENDOR_FONTS, 0 ) == VLC_ENOMEM )
            return VLC_ENOMEM;
    }

    return VLC_SUCCESS;
}
