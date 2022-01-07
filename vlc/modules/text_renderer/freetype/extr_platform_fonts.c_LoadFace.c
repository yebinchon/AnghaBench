
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int i_style_flags; } ;
typedef TYPE_1__ text_style_t ;
struct TYPE_14__ {int i_data; int p_data; } ;
typedef TYPE_2__ input_attachment_t ;
struct TYPE_15__ {TYPE_4__* p_sys; } ;
typedef TYPE_3__ filter_t ;
struct TYPE_16__ {int i_font_attachments; int face_map; int p_library; TYPE_2__** pp_font_attachments; } ;
typedef TYPE_4__ filter_sys_t ;
struct TYPE_17__ {int stream; int flags; int member_0; } ;
typedef int FT_Stream ;
typedef TYPE_5__ FT_Open_Args ;
typedef int * FT_Face ;


 int ConvertToLiveSize (TYPE_3__*,TYPE_1__ const*) ;
 scalar_t__ DWrite_GetFontStream (TYPE_3__*,int,int *) ;
 int FT_Done_Face (int *) ;
 scalar_t__ FT_New_Face (int ,char const*,int,int **) ;
 scalar_t__ FT_New_Memory_Face (int ,int ,int ,int,int **) ;
 int FT_OPEN_STREAM ;
 scalar_t__ FT_Open_Face (int ,TYPE_5__*,int,int **) ;
 scalar_t__ FT_Select_Charmap (int *,int ) ;
 scalar_t__ FT_Set_Pixel_Sizes (int *,int,int) ;
 int STYLE_DOUBLEWIDTH ;
 int STYLE_HALFWIDTH ;
 scalar_t__ VLC_SUCCESS ;
 scalar_t__ asprintf (char**,char*,char const*,int,int,int) ;
 int atoi (char const*) ;
 int free (char*) ;
 int ft_encoding_unicode ;
 int memcmp (char const*,char*,int) ;
 int msg_Err (TYPE_3__*,char*,...) ;
 int vlc_dictionary_insert (int *,char*,int *) ;
 int * vlc_dictionary_value_for_key (int *,char*) ;

__attribute__((used)) static FT_Face LoadFace( filter_t *p_filter, const char *psz_fontfile, int i_idx,
                  const text_style_t *p_style )
{
    filter_sys_t *p_sys = p_filter->p_sys;
    char *psz_key = ((void*)0);

    int i_font_size = ConvertToLiveSize( p_filter, p_style );
    int i_font_width = i_font_size;
    if( p_style->i_style_flags & STYLE_HALFWIDTH )
        i_font_width /= 2;
    else if( p_style->i_style_flags & STYLE_DOUBLEWIDTH )
        i_font_width *= 2;

    if( asprintf( &psz_key, "%s - %d - %d - %d",
                  psz_fontfile, i_idx,
                  i_font_size, i_font_width ) < 0 )
        return ((void*)0);

    FT_Face p_face = vlc_dictionary_value_for_key( &p_sys->face_map, psz_key );
    if( p_face != ((void*)0) )
        goto done;

    if( psz_fontfile[0] == ':' && psz_fontfile[1] == '/' )
    {
        int i_attach = atoi( psz_fontfile + 2 );
        if( i_attach < 0 || i_attach >= p_sys->i_font_attachments )
            msg_Err( p_filter, "LoadFace: Invalid font attachment index" );
        else
        {
            input_attachment_t *p_attach = p_sys->pp_font_attachments[ i_attach ];
            if( FT_New_Memory_Face( p_sys->p_library, p_attach->p_data,
                                    p_attach->i_data, i_idx, &p_face ) )
                msg_Err( p_filter, "LoadFace: Error creating face for %s", psz_key );
        }
    }
    else
        if( FT_New_Face( p_sys->p_library, psz_fontfile, i_idx, &p_face ) )
            msg_Err( p_filter, "LoadFace: Error creating face for %s", psz_key );

    if( !p_face )
        goto done;

    if( FT_Select_Charmap( p_face, ft_encoding_unicode ) )
    {



        msg_Err( p_filter, "LoadFace: Error selecting charmap for %s", psz_key );
        FT_Done_Face( p_face );
        p_face = ((void*)0);
        goto done;
    }

    if( FT_Set_Pixel_Sizes( p_face, i_font_width, i_font_size ) )
    {
        msg_Err( p_filter,
                 "LoadFace: Failed to set font size for %s", psz_key );
        FT_Done_Face( p_face );
        p_face = ((void*)0);
        goto done;
    }

    vlc_dictionary_insert( &p_sys->face_map, psz_key, p_face );

done:
    free( psz_key );
    return p_face;
}
