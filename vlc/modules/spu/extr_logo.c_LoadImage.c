
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int video_format_t ;
typedef int picture_t ;
typedef int image_handler_t ;


 int VLC_CODEC_YUVA ;
 int free (char*) ;
 int * image_HandlerCreate (int *) ;
 int image_HandlerDelete (int *) ;
 int * image_ReadUrl (int *,char*,int *) ;
 int video_format_Clean (int *) ;
 int video_format_Init (int *,int ) ;
 char* vlc_path2uri (char const*,int *) ;

__attribute__((used)) static picture_t *LoadImage( vlc_object_t *p_this, const char *psz_filename )
{
    if( !psz_filename )
        return ((void*)0);

    image_handler_t *p_image = image_HandlerCreate( p_this );
    if( !p_image )
        return ((void*)0);

    video_format_t fmt_out;
    video_format_Init( &fmt_out, VLC_CODEC_YUVA );

    char *psz_url = vlc_path2uri( psz_filename, ((void*)0) );
    picture_t *p_pic = image_ReadUrl( p_image, psz_url, &fmt_out );
    free( psz_url );
    image_HandlerDelete( p_image );
    video_format_Clean( &fmt_out );

    return p_pic;
}
