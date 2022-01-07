
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int vlc_fourcc_t ;
typedef int video_format_t ;
struct TYPE_6__ {TYPE_1__* p; } ;
typedef TYPE_2__ picture_t ;
typedef int image_handler_t ;
struct TYPE_5__ {int i_visible_lines; int i_visible_pitch; } ;


 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 size_t Y_PLANE ;
 int * image_HandlerCreate (int *) ;
 int image_HandlerDelete (int *) ;
 TYPE_2__* image_ReadUrl (int *,char*,int *) ;
 int msg_Dbg (int *,char*,char const*,int ,int ) ;
 int msg_Err (int *,char*,char const*) ;
 int video_format_Clean (int *) ;
 int video_format_Init (int *,int ) ;

__attribute__((used)) static int blendbench_LoadImage( vlc_object_t *p_this, picture_t **pp_pic,
                                 vlc_fourcc_t i_chroma, char *psz_file, const char *psz_name )
{
    image_handler_t *p_image;
    video_format_t fmt_out;

    video_format_Init( &fmt_out, i_chroma );

    p_image = image_HandlerCreate( p_this );
    *pp_pic = image_ReadUrl( p_image, psz_file, &fmt_out );
    video_format_Clean( &fmt_out );
    image_HandlerDelete( p_image );

    if( *pp_pic == ((void*)0) )
    {
        msg_Err( p_this, "Unable to load %s image", psz_name );
        return VLC_EGENERIC;
    }

    msg_Dbg( p_this, "%s image has dim %d x %d (Y plane)", psz_name,
             (*pp_pic)->p[Y_PLANE].i_visible_pitch,
             (*pp_pic)->p[Y_PLANE].i_visible_lines );

    return VLC_SUCCESS;
}
