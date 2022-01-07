
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int video_format_t ;
typedef int picture_t ;
typedef int image_handler_t ;
struct TYPE_6__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ filter_t ;
struct TYPE_7__ {int * p_mask; } ;
typedef TYPE_2__ filter_sys_t ;


 int VLC_CODEC_YUVA ;
 int free (char*) ;
 int * image_HandlerCreate (TYPE_1__*) ;
 int image_HandlerDelete (int *) ;
 int * image_ReadUrl (int *,char*,int *) ;
 int msg_Err (TYPE_1__*,char*) ;
 int picture_Release (int *) ;
 int video_format_Clean (int *) ;
 int video_format_Init (int *,int ) ;
 char* vlc_path2uri (char const*,int *) ;

__attribute__((used)) static void LoadMask( filter_t *p_filter, const char *psz_filename )
{
    filter_sys_t *p_sys = p_filter->p_sys;
    image_handler_t *p_image;
    video_format_t fmt_out;
    picture_t *p_old_mask = p_sys->p_mask;
    video_format_Init( &fmt_out, VLC_CODEC_YUVA );
    p_image = image_HandlerCreate( p_filter );
    char *psz_url = vlc_path2uri( psz_filename, ((void*)0) );
    p_sys->p_mask = image_ReadUrl( p_image, psz_url, &fmt_out );
    free( psz_url );
    video_format_Clean( &fmt_out );
    if( p_sys->p_mask )
    {
        if( p_old_mask )
            picture_Release( p_old_mask );
    }
    else if( p_old_mask )
    {
        p_sys->p_mask = p_old_mask;
        msg_Err( p_filter, "Error while loading new mask. Keeping old mask." );
    }
    else
        msg_Err( p_filter, "Error while loading new mask. No mask available." );

    image_HandlerDelete( p_image );
}
