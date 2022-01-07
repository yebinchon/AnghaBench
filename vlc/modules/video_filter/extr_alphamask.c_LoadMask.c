
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int video_format_t ;
typedef int image_handler_t ;
struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ filter_t ;
struct TYPE_6__ {scalar_t__ p_mask; } ;
typedef TYPE_2__ filter_sys_t ;


 int VLC_CODEC_YUVA ;
 int free (char*) ;
 int * image_HandlerCreate (TYPE_1__*) ;
 int image_HandlerDelete (int *) ;
 scalar_t__ image_ReadUrl (int *,char*,int *) ;
 int picture_Release (scalar_t__) ;
 int video_format_Clean (int *) ;
 int video_format_Init (int *,int ) ;
 char* vlc_path2uri (char const*,int *) ;

__attribute__((used)) static void LoadMask( filter_t *p_filter, const char *psz_filename )
{
    filter_sys_t *p_sys = p_filter->p_sys;
    image_handler_t *p_image;
    video_format_t fmt_out;
    video_format_Init( &fmt_out, VLC_CODEC_YUVA );
    if( p_sys->p_mask )
        picture_Release( p_sys->p_mask );
    p_image = image_HandlerCreate( p_filter );
    char *psz_url = vlc_path2uri( psz_filename, ((void*)0) );
    p_sys->p_mask =
        image_ReadUrl( p_image, psz_url, &fmt_out );
    free( psz_url );
    video_format_Clean( &fmt_out );
    image_HandlerDelete( p_image );
}
