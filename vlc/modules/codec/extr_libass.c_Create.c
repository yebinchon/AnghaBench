
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int vlc_dialog_id ;
struct TYPE_18__ {char* psz_mime; char* psz_name; int i_data; int p_data; } ;
typedef TYPE_3__ input_attachment_t ;
struct TYPE_17__ {int i_codec; } ;
struct TYPE_16__ {scalar_t__ i_codec; int i_extra; int p_extra; } ;
struct TYPE_19__ {TYPE_2__ fmt_out; TYPE_1__ fmt_in; TYPE_5__* p_sys; int pf_flush; int pf_decode; } ;
typedef TYPE_4__ decoder_t ;
struct TYPE_20__ {int i_refcount; int * p_library; int * p_track; int * p_renderer; int i_max_stop; int fmt; int lock; } ;
typedef TYPE_5__ decoder_sys_t ;
typedef int ASS_Track ;
typedef int ASS_Renderer ;
typedef int ASS_Library ;


 int ASS_FONTPROVIDER_AUTODETECT ;
 int ASS_HINTING_NONE ;
 int DecSysRelease (TYPE_5__*) ;
 int DecodeBlock ;
 int Flush ;
 int R_OK ;
 int VLC_CODEC_RGBA ;
 scalar_t__ VLC_CODEC_SSA ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int VLC_TICK_INVALID ;
 int _ (char*) ;
 int access (char const*,int ) ;
 int ass_add_font (int *,char*,int ,int ) ;
 int * ass_library_init () ;
 int * ass_new_track (int *) ;
 int ass_process_codec_private (int *,int ,int ) ;
 int * ass_renderer_init (int *) ;
 int ass_set_extract_fonts (int *,int) ;
 int ass_set_font_scale (int *,double) ;
 int ass_set_fonts (int *,char const*,char const*,int ,int *,int) ;
 int ass_set_hinting (int *,int ) ;
 int ass_set_line_spacing (int *,double) ;
 int ass_set_style_overrides (int *,int *) ;
 int ass_set_use_margins (int *,int) ;
 scalar_t__ decoder_GetInputAttachments (TYPE_4__*,TYPE_3__***,int*) ;
 int free (TYPE_3__**) ;
 TYPE_5__* malloc (int) ;
 int memset (int *,int ,int) ;
 int msg_Dbg (TYPE_4__*,char*,char*) ;
 int msg_Warn (TYPE_4__*,char*) ;
 int strcasecmp (char*,char*) ;
 int strlen (char*) ;
 int * vlc_dialog_display_progress (TYPE_4__*,int,double,int *,int ,int ) ;
 int vlc_dialog_release (TYPE_4__*,int *) ;
 int vlc_input_attachment_Delete (TYPE_3__*) ;
 int vlc_mutex_init (int *) ;

__attribute__((used)) static int Create( vlc_object_t *p_this )
{
    decoder_t *p_dec = (decoder_t *)p_this;
    decoder_sys_t *p_sys;

    if( p_dec->fmt_in.i_codec != VLC_CODEC_SSA )
        return VLC_EGENERIC;

    p_dec->pf_decode = DecodeBlock;
    p_dec->pf_flush = Flush;

    p_dec->p_sys = p_sys = malloc( sizeof( decoder_sys_t ) );
    if( !p_sys )
        return VLC_ENOMEM;


    vlc_mutex_init( &p_sys->lock );
    p_sys->i_refcount = 1;
    memset( &p_sys->fmt, 0, sizeof(p_sys->fmt) );
    p_sys->i_max_stop = VLC_TICK_INVALID;
    p_sys->p_library = ((void*)0);
    p_sys->p_renderer = ((void*)0);
    p_sys->p_track = ((void*)0);


    ASS_Library *p_library = p_sys->p_library = ass_library_init();
    if( !p_library )
    {
        msg_Warn( p_dec, "Libass library creation failed" );
        DecSysRelease( p_sys );
        return VLC_EGENERIC;
    }


    input_attachment_t **pp_attachments;
    int i_attachments;
    if( decoder_GetInputAttachments( p_dec, &pp_attachments, &i_attachments ))
    {
        i_attachments = 0;
        pp_attachments = ((void*)0);
    }
    for( int k = 0; k < i_attachments; k++ )
    {
        input_attachment_t *p_attach = pp_attachments[k];

        bool found = 0;


        if( !strcasecmp( p_attach->psz_mime, "application/x-truetype-font" ) )
            found = 1;

        else if( !found && strlen( p_attach->psz_name ) > 4 )
        {
            char *ext = p_attach->psz_name + strlen( p_attach->psz_name ) - 4;

            if( !strcasecmp( ext, ".ttf" ) || !strcasecmp( ext, ".otf" ) || !strcasecmp( ext, ".ttc" ) )
                found = 1;
        }

        if( found )
        {
            msg_Dbg( p_dec, "adding embedded font %s", p_attach->psz_name );

            ass_add_font( p_sys->p_library, p_attach->psz_name, p_attach->p_data, p_attach->i_data );
        }
        vlc_input_attachment_Delete( p_attach );
    }
    free( pp_attachments );

    ass_set_extract_fonts( p_library, 1 );
    ass_set_style_overrides( p_library, ((void*)0) );


    ASS_Renderer *p_renderer = p_sys->p_renderer = ass_renderer_init( p_library );
    if( !p_renderer )
    {
        msg_Warn( p_dec, "Libass renderer creation failed" );
        DecSysRelease( p_sys );
        return VLC_EGENERIC;
    }

    ass_set_use_margins( p_renderer, 0);


    ass_set_font_scale( p_renderer, 1.0 );
    ass_set_line_spacing( p_renderer, 0.0 );
    const char *psz_font = ((void*)0);
    const char *psz_family = "Arial";
    ass_set_fonts( p_renderer, psz_font, psz_family, ASS_FONTPROVIDER_AUTODETECT, ((void*)0), 0 );




    ass_set_hinting( p_renderer, ASS_HINTING_NONE );


    ASS_Track *p_track = p_sys->p_track = ass_new_track( p_sys->p_library );
    if( !p_track )
    {
        DecSysRelease( p_sys );
        return VLC_EGENERIC;
    }
    ass_process_codec_private( p_track, p_dec->fmt_in.p_extra, p_dec->fmt_in.i_extra );

    p_dec->fmt_out.i_codec = VLC_CODEC_RGBA;

    return VLC_SUCCESS;
}
