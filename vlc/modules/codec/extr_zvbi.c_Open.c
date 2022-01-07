
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_20__ {int i_codec; } ;
struct TYPE_17__ {int i_magazine; int i_page; } ;
struct TYPE_18__ {TYPE_1__ teletext; } ;
struct TYPE_19__ {scalar_t__ i_codec; TYPE_2__ subs; scalar_t__ psz_language; } ;
struct TYPE_21__ {int pf_decode; TYPE_4__ fmt_out; TYPE_3__ fmt_in; TYPE_6__* p_sys; } ;
typedef TYPE_5__ decoder_t ;
struct TYPE_22__ {char* i_key; int b_update; int i_wanted_page; void* b_text; void* i_level; void* i_align; void* b_opaque; int i_wanted_subpage; int * p_vbi_dec; int lock; } ;
typedef TYPE_6__ decoder_sys_t ;


 int Close (int *) ;
 int Decode ;
 int EventHandler ;
 int Opaque ;
 int RequestPage ;
 int VBI_ANY_SUBNO ;
 int VBI_EVENT_ASPECT ;
 int VBI_EVENT_CAPTION ;
 int VBI_EVENT_NETWORK ;
 int VBI_EVENT_NETWORK_ID ;
 int VBI_EVENT_PROG_INFO ;
 int VBI_EVENT_TRIGGER ;
 int VBI_EVENT_TTX_PAGE ;
 int VLC_CODEC_RGBA ;
 scalar_t__ VLC_CODEC_TELETEXT ;
 int VLC_CODEC_TEXT ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 TYPE_6__* calloc (int,int) ;
 int msg_Dbg (TYPE_5__*,char*,int ) ;
 int msg_Err (TYPE_5__*,char*) ;
 int msg_Warn (TYPE_5__*,char*) ;
 int * pi_default_triplet ;
 int ** ppsz_default_triplet ;
 int strcasecmp (scalar_t__,int *) ;
 int var_AddCallback (TYPE_5__*,char*,int ,TYPE_6__*) ;
 void* var_CreateGetBool (TYPE_5__*,char*) ;
 void* var_CreateGetInteger (TYPE_5__*,char*) ;
 int var_SetInteger (TYPE_5__*,char*,int) ;
 int vbi_bcd2dec (int ) ;
 int * vbi_decoder_new () ;
 int vbi_event_handler_register (int *,int,int ,TYPE_5__*) ;
 int vbi_teletext_set_default_region (int *,int ) ;
 int vlc_mutex_init (int *) ;

__attribute__((used)) static int Open( vlc_object_t *p_this )
{
    decoder_t *p_dec = (decoder_t *) p_this;
    decoder_sys_t *p_sys = ((void*)0);

    if( p_dec->fmt_in.i_codec != VLC_CODEC_TELETEXT )
        return VLC_EGENERIC;

    int i_page = var_CreateGetInteger( p_dec, "vbi-page" );
    if( i_page > 999 )
    {
        msg_Warn( p_dec, "invalid vbi-page requested");
        i_page = 0;
    }

    p_sys = p_dec->p_sys = calloc( 1, sizeof(decoder_sys_t) );
    if( p_sys == ((void*)0) )
        return VLC_ENOMEM;

    p_sys->i_key[0] = p_sys->i_key[1] = p_sys->i_key[2] = '*' - '0';
    p_sys->b_update = 0;
    p_sys->p_vbi_dec = vbi_decoder_new();
    vlc_mutex_init( &p_sys->lock );

    if( p_sys->p_vbi_dec == ((void*)0) )
    {
        msg_Err( p_dec, "VBI decoder could not be created." );
        Close( p_this );
        return VLC_ENOMEM;
    }





    for( int i = 0; ppsz_default_triplet[i] != ((void*)0); i++ )
    {
        if( p_dec->fmt_in.psz_language && !strcasecmp( p_dec->fmt_in.psz_language, ppsz_default_triplet[i] ) )
        {
            vbi_teletext_set_default_region( p_sys->p_vbi_dec, pi_default_triplet[i]);
            msg_Dbg( p_dec, "overwriting default zvbi region: %d", pi_default_triplet[i] );
        }
    }

    vbi_event_handler_register( p_sys->p_vbi_dec, VBI_EVENT_TTX_PAGE | VBI_EVENT_NETWORK |




                                0 , EventHandler, p_dec );


    p_sys->i_wanted_page = i_page;
    var_AddCallback( p_dec, "vbi-page", RequestPage, p_sys );


    if( p_sys->i_wanted_page == 100 && p_dec->fmt_in.subs.teletext.i_magazine < 9 )
    {
        p_sys->i_wanted_page = 100 * p_dec->fmt_in.subs.teletext.i_magazine +
                               vbi_bcd2dec( p_dec->fmt_in.subs.teletext.i_page );
        var_SetInteger( p_dec, "vbi-page", p_sys->i_wanted_page );
    }
    p_sys->i_wanted_subpage = VBI_ANY_SUBNO;

    p_sys->b_opaque = var_CreateGetBool( p_dec, "vbi-opaque" );
    var_AddCallback( p_dec, "vbi-opaque", Opaque, p_sys );

    p_sys->i_align = var_CreateGetInteger( p_dec, "vbi-position" );

    p_sys->b_text = var_CreateGetBool( p_dec, "vbi-text" );

    p_sys->i_level = var_CreateGetInteger( p_dec, "vbi-level" );

    p_dec->fmt_out.i_codec = p_sys->b_text ? VLC_CODEC_TEXT : VLC_CODEC_RGBA;

    p_dec->pf_decode = Decode;
    return VLC_SUCCESS;
}
