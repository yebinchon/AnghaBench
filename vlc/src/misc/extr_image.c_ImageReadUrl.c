
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ vlc_fourcc_t ;
typedef int video_format_t ;
typedef scalar_t__ uint64_t ;
typedef int stream_t ;
typedef int picture_t ;
struct TYPE_4__ {int p_parent; } ;
typedef TYPE_1__ image_handler_t ;
typedef int es_format_t ;
typedef int block_t ;


 int * ImageRead (TYPE_1__*,int *,int *,int *) ;
 scalar_t__ SSIZE_MAX ;
 int VIDEO_ES ;
 int es_format_Clean (int *) ;
 int es_format_Init (int *,int ,scalar_t__) ;
 int free (char*) ;
 scalar_t__ image_Ext2Fourcc (char const*) ;
 scalar_t__ image_Mime2Fourcc (char*) ;
 int msg_Dbg (int ,char*,char const*) ;
 char* stream_MimeType (int *) ;
 int * vlc_stream_Block (int *,scalar_t__) ;
 int vlc_stream_Delete (int *) ;
 scalar_t__ vlc_stream_GetSize (int *,scalar_t__*) ;
 int * vlc_stream_NewURL (int ,char const*) ;

__attribute__((used)) static picture_t *ImageReadUrl( image_handler_t *p_image, const char *psz_url,
                                video_format_t *p_fmt_out )
{
    block_t *p_block;
    picture_t *p_pic;
    stream_t *p_stream = ((void*)0);
    uint64_t i_size;

    p_stream = vlc_stream_NewURL( p_image->p_parent, psz_url );

    if( !p_stream )
    {
        msg_Dbg( p_image->p_parent, "could not open %s for reading",
                 psz_url );
        return ((void*)0);
    }

    if( vlc_stream_GetSize( p_stream, &i_size ) || i_size > SSIZE_MAX )
    {
        msg_Dbg( p_image->p_parent, "could not read %s", psz_url );
        goto error;
    }

    p_block = vlc_stream_Block( p_stream, i_size );
    if( p_block == ((void*)0) )
        goto error;

    vlc_fourcc_t i_chroma = 0;
    char *psz_mime = stream_MimeType( p_stream );
    if( psz_mime != ((void*)0) )
    {
        i_chroma = image_Mime2Fourcc( psz_mime );
        free( psz_mime );
    }
    if( !i_chroma )
    {

       i_chroma = image_Ext2Fourcc( psz_url );
    }
    vlc_stream_Delete( p_stream );


    es_format_t fmtin;
    es_format_Init( &fmtin, VIDEO_ES, i_chroma );
    p_pic = ImageRead( p_image, p_block, &fmtin, p_fmt_out );

    es_format_Clean( &fmtin );

    return p_pic;
error:
    vlc_stream_Delete( p_stream );
    return ((void*)0);
}
