#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  vlc_dialog_id ;
struct TYPE_18__ {char* psz_mime; char* psz_name; int /*<<< orphan*/  i_data; int /*<<< orphan*/  p_data; } ;
typedef  TYPE_3__ input_attachment_t ;
struct TYPE_17__ {int /*<<< orphan*/  i_codec; } ;
struct TYPE_16__ {scalar_t__ i_codec; int /*<<< orphan*/  i_extra; int /*<<< orphan*/  p_extra; } ;
struct TYPE_19__ {TYPE_2__ fmt_out; TYPE_1__ fmt_in; TYPE_5__* p_sys; int /*<<< orphan*/  pf_flush; int /*<<< orphan*/  pf_decode; } ;
typedef  TYPE_4__ decoder_t ;
struct TYPE_20__ {int i_refcount; int /*<<< orphan*/ * p_library; int /*<<< orphan*/ * p_track; int /*<<< orphan*/ * p_renderer; int /*<<< orphan*/  i_max_stop; int /*<<< orphan*/  fmt; int /*<<< orphan*/  lock; } ;
typedef  TYPE_5__ decoder_sys_t ;
typedef  int /*<<< orphan*/  ASS_Track ;
typedef  int /*<<< orphan*/  ASS_Renderer ;
typedef  int /*<<< orphan*/  ASS_Library ;

/* Variables and functions */
 int /*<<< orphan*/  ASS_FONTPROVIDER_AUTODETECT ; 
 int /*<<< orphan*/  ASS_HINTING_NONE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  DecodeBlock ; 
 int /*<<< orphan*/  Flush ; 
 int /*<<< orphan*/  R_OK ; 
 int /*<<< orphan*/  VLC_CODEC_RGBA ; 
 scalar_t__ VLC_CODEC_SSA ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  VLC_TICK_INVALID ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,double) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,double) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC15 (TYPE_4__*,TYPE_3__***,int*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__**) ; 
 TYPE_5__* FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_4__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC21 (char*,char*) ; 
 int FUNC22 (char*) ; 
 int /*<<< orphan*/ * FUNC23 (TYPE_4__*,int,double,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC27( vlc_object_t *p_this )
{
    decoder_t *p_dec = (decoder_t *)p_this;
    decoder_sys_t *p_sys;

    if( p_dec->fmt_in.i_codec != VLC_CODEC_SSA )
        return VLC_EGENERIC;

    p_dec->pf_decode = DecodeBlock;
    p_dec->pf_flush  = Flush;

    p_dec->p_sys = p_sys = FUNC17( sizeof( decoder_sys_t ) );
    if( !p_sys )
        return VLC_ENOMEM;

    /* */
    FUNC26( &p_sys->lock );
    p_sys->i_refcount = 1;
    FUNC18( &p_sys->fmt, 0, sizeof(p_sys->fmt) );
    p_sys->i_max_stop = VLC_TICK_INVALID;
    p_sys->p_library  = NULL;
    p_sys->p_renderer = NULL;
    p_sys->p_track    = NULL;

    /* Create libass library */
    ASS_Library *p_library = p_sys->p_library = FUNC4();
    if( !p_library )
    {
        FUNC20( p_dec, "Libass library creation failed" );
        FUNC0( p_sys );
        return VLC_EGENERIC;
    }

    /* load attachments */
    input_attachment_t  **pp_attachments;
    int                   i_attachments;
    if( FUNC15( p_dec, &pp_attachments, &i_attachments ))
    {
        i_attachments = 0;
        pp_attachments = NULL;
    }
    for( int k = 0; k < i_attachments; k++ )
    {
        input_attachment_t *p_attach = pp_attachments[k];

        bool found = false;

        /* Check mimetype*/
        if( !FUNC21( p_attach->psz_mime, "application/x-truetype-font" ) )
            found = true;
        /* Then extension */
        else if( !found && FUNC22( p_attach->psz_name ) > 4 )
        {
            char *ext = p_attach->psz_name + FUNC22( p_attach->psz_name ) - 4;

            if( !FUNC21( ext, ".ttf" ) || !FUNC21( ext, ".otf" ) || !FUNC21( ext, ".ttc" ) )
                found = true;
        }

        if( found )
        {
            FUNC19( p_dec, "adding embedded font %s", p_attach->psz_name );

            FUNC3( p_sys->p_library, p_attach->psz_name, p_attach->p_data, p_attach->i_data );
        }
        FUNC25( p_attach );
    }
    FUNC16( pp_attachments );

    FUNC8( p_library, true );
    FUNC13( p_library, NULL );

    /* Create the renderer */
    ASS_Renderer *p_renderer = p_sys->p_renderer = FUNC7( p_library );
    if( !p_renderer )
    {
        FUNC20( p_dec, "Libass renderer creation failed" );
        FUNC0( p_sys );
        return VLC_EGENERIC;
    }

    FUNC14( p_renderer, false);
    //if( false )
    //    ass_set_margins( p_renderer, int t, int b, int l, int r);
    FUNC9( p_renderer, 1.0 );
    FUNC12( p_renderer, 0.0 );

#if defined( __ANDROID__ )
    const char *psz_font, *psz_family;
    const char *psz_font_droid = "/system/fonts/DroidSans-Bold.ttf";
    const char *psz_family_droid = "Droid Sans Bold";
    const char *psz_font_noto = "/system/fonts/NotoSansCJK-Regular.ttc";
    const char *psz_family_noto = "Noto Sans";

    // Workaround for Android 5.0+, since libass doesn't parse the XML yet
    if( access( psz_font_noto, R_OK ) != -1 )
    {
        psz_font = psz_font_noto;
        psz_family = psz_family_noto;
    }
    else
    {
        psz_font = psz_font_droid;
        psz_family = psz_family_droid;
    }

#elif defined( __APPLE__ )
    const char *psz_font = NULL; /* We don't ship a default font with VLC */
    const char *psz_family = "Helvetica Neue"; /* Use HN if we can't find anything more suitable - Arial is not on all Apple platforms */
#else
    const char *psz_font = NULL; /* We don't ship a default font with VLC */
    const char *psz_family = "Arial"; /* Use Arial if we can't find anything more suitable */
#endif

#ifdef HAVE_FONTCONFIG
#if defined(_WIN32)
    vlc_dialog_id *p_dialog_id =
        vlc_dialog_display_progress( p_dec, true, 0.0, NULL,
                                    _("Building font cache"),
                                    _( "Please wait while your font cache is rebuilt.\n"
                                    "This should take less than a minute." ) );
#endif
    ass_set_fonts( p_renderer, psz_font, psz_family, ASS_FONTPROVIDER_AUTODETECT, NULL, 1 );  // setup default font/family
#if defined(_WIN32)
    if( p_dialog_id != 0 )
        vlc_dialog_release( p_dec, p_dialog_id );
#endif
#else
    FUNC10( p_renderer, psz_font, psz_family, ASS_FONTPROVIDER_AUTODETECT, NULL, 0 );
#endif

    /* Anything else than NONE will break smooth img updating.
       TODO: List and force ASS_HINTING_LIGHT for known problematic fonts */
    FUNC11( p_renderer, ASS_HINTING_NONE );

    /* Add a track */
    ASS_Track *p_track = p_sys->p_track = FUNC5( p_sys->p_library );
    if( !p_track )
    {
        FUNC0( p_sys );
        return VLC_EGENERIC;
    }
    FUNC6( p_track, p_dec->fmt_in.p_extra, p_dec->fmt_in.i_extra );

    p_dec->fmt_out.i_codec = VLC_CODEC_RGBA;

    return VLC_SUCCESS;
}