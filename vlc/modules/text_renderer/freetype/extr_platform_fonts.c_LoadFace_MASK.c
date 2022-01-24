#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int i_style_flags; } ;
typedef  TYPE_1__ text_style_t ;
struct TYPE_14__ {int /*<<< orphan*/  i_data; int /*<<< orphan*/  p_data; } ;
typedef  TYPE_2__ input_attachment_t ;
struct TYPE_15__ {TYPE_4__* p_sys; } ;
typedef  TYPE_3__ filter_t ;
struct TYPE_16__ {int i_font_attachments; int /*<<< orphan*/  face_map; int /*<<< orphan*/  p_library; TYPE_2__** pp_font_attachments; } ;
typedef  TYPE_4__ filter_sys_t ;
struct TYPE_17__ {int /*<<< orphan*/  stream; int /*<<< orphan*/  flags; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  FT_Stream ;
typedef  TYPE_5__ FT_Open_Args ;
typedef  int /*<<< orphan*/ * FT_Face ;

/* Variables and functions */
 int FUNC0 (TYPE_3__*,TYPE_1__ const*) ; 
 scalar_t__ FUNC1 (TYPE_3__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FT_OPEN_STREAM ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,TYPE_5__*,int,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int,int) ; 
 int STYLE_DOUBLEWIDTH ; 
 int STYLE_HALFWIDTH ; 
 scalar_t__ VLC_SUCCESS ; 
 scalar_t__ FUNC8 (char**,char*,char const*,int,int,int) ; 
 int FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  ft_encoding_unicode ; 
 int /*<<< orphan*/  FUNC11 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static FT_Face FUNC15( filter_t *p_filter, const char *psz_fontfile, int i_idx,
                  const text_style_t *p_style )
{
    filter_sys_t *p_sys = p_filter->p_sys;
    char *psz_key = NULL;

    int i_font_size  = FUNC0( p_filter, p_style );
    int i_font_width = i_font_size;
    if( p_style->i_style_flags & STYLE_HALFWIDTH )
        i_font_width /= 2;
    else if( p_style->i_style_flags & STYLE_DOUBLEWIDTH )
        i_font_width *= 2;

    if( FUNC8( &psz_key, "%s - %d - %d - %d",
                  psz_fontfile, i_idx,
                  i_font_size, i_font_width ) < 0 )
        return NULL;

    FT_Face p_face = FUNC14( &p_sys->face_map, psz_key );
    if( p_face != NULL )
        goto done;

    if( psz_fontfile[0] == ':' && psz_fontfile[1] == '/' )
    {
        int i_attach = FUNC9( psz_fontfile + 2 );
        if( i_attach < 0 || i_attach >= p_sys->i_font_attachments )
            FUNC12( p_filter, "LoadFace: Invalid font attachment index" );
        else
        {
            input_attachment_t *p_attach = p_sys->pp_font_attachments[ i_attach ];
            if( FUNC4( p_sys->p_library, p_attach->p_data,
                                    p_attach->i_data, i_idx, &p_face ) )
                FUNC12( p_filter, "LoadFace: Error creating face for %s", psz_key );
        }
    }

#if defined( _WIN32 )
    else if( !memcmp( psz_fontfile, ":dw/", 4 ) )
    {
        int i_index = atoi( psz_fontfile + 4 );
        FT_Stream p_stream;
        if( DWrite_GetFontStream( p_filter, i_index, &p_stream ) != VLC_SUCCESS )
            msg_Err( p_filter, "LoadFace: Invalid font stream index" );
        else
        {
            FT_Open_Args args = {0};
            args.flags = FT_OPEN_STREAM;
            args.stream = p_stream;
            if( FT_Open_Face( p_sys->p_library, &args, i_idx, &p_face ) )
                msg_Err( p_filter, "LoadFace: Error creating face for %s", psz_key );
        }
    }
#endif

    else
        if( FUNC3( p_sys->p_library, psz_fontfile, i_idx, &p_face ) )
            FUNC12( p_filter, "LoadFace: Error creating face for %s", psz_key );

    if( !p_face )
        goto done;

    if( FUNC6( p_face, ft_encoding_unicode ) )
    {
        /* We've loaded a font face which is unhelpful for actually
         * rendering text - fallback to the default one.
         */
        FUNC12( p_filter, "LoadFace: Error selecting charmap for %s", psz_key );
        FUNC2( p_face );
        p_face = NULL;
        goto done;
    }

    if( FUNC7( p_face, i_font_width, i_font_size ) )
    {
        FUNC12( p_filter,
                 "LoadFace: Failed to set font size for %s", psz_key );
        FUNC2( p_face );
        p_face = NULL;
        goto done;
    }

    FUNC13( &p_sys->face_map, psz_key, p_face );

done:
    FUNC10( psz_key );
    return p_face;
}