
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef scalar_t__ vlc_iconv_t ;
struct TYPE_13__ {char* psz_encoding; } ;
struct TYPE_14__ {int i_codec; TYPE_2__ subs; } ;
struct TYPE_12__ {scalar_t__ i_codec; } ;
struct TYPE_15__ {TYPE_3__ fmt_in; TYPE_1__ fmt_out; int pf_decode; TYPE_5__* p_sys; } ;
typedef TYPE_4__ decoder_t ;
struct TYPE_16__ {int i_align; scalar_t__ iconv_handle; int b_autodetect_utf8; } ;
typedef TYPE_5__ decoder_sys_t ;


 int DecodeBlock ;


 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 TYPE_5__* calloc (int,int) ;
 int errno ;
 int free (char*) ;
 int msg_Dbg (TYPE_4__*,char*,...) ;
 int msg_Err (TYPE_4__*,char*,char const*,int ) ;
 scalar_t__ strcasecmp (char const*,char*) ;
 int strcmp (char*,char*) ;
 scalar_t__ var_InheritBool (TYPE_4__*,char*) ;
 int var_InheritInteger (TYPE_4__*,char*) ;
 char* var_InheritString (TYPE_4__*,char*) ;
 scalar_t__ vlc_iconv_open (char*,char const*) ;
 char* vlc_pgettext (char*,char*) ;
 int vlc_strerror_c (int ) ;

__attribute__((used)) static int OpenDecoder( vlc_object_t *p_this )
{
    decoder_t *p_dec = (decoder_t*)p_this;
    decoder_sys_t *p_sys;

    switch( p_dec->fmt_in.i_codec )
    {
        case 128:
        case 129:
            break;
        default:
            return VLC_EGENERIC;
    }


    p_dec->p_sys = p_sys = calloc( 1, sizeof( *p_sys ) );
    if( p_sys == ((void*)0) )
        return VLC_ENOMEM;

    p_dec->pf_decode = DecodeBlock;
    p_dec->fmt_out.i_codec = 0;


    p_sys->i_align = -1;
    p_sys->iconv_handle = (vlc_iconv_t)-1;
    p_sys->b_autodetect_utf8 = 0;

    const char *encoding;
    char *var = ((void*)0);


    if( p_dec->fmt_in.i_codec == 129 )
        encoding = "UTF-8";
    else
    if( p_dec->fmt_in.subs.psz_encoding && *p_dec->fmt_in.subs.psz_encoding )
    {
        encoding = p_dec->fmt_in.subs.psz_encoding;
        msg_Dbg (p_dec, "trying demuxer-specified character encoding: %s",
                 encoding);
    }
    else
    {

        if ((var = var_InheritString (p_dec, "subsdec-encoding")) != ((void*)0))
        {
            msg_Dbg (p_dec, "trying configured character encoding: %s", var);
            if (!strcmp (var, "system"))
            {
                free (var);
                var = ((void*)0);
                encoding = "";

            }
            else
                encoding = var;
        }
        else

        {
            encoding = vlc_pgettext("GetACP", "CP1252");
            msg_Dbg (p_dec, "trying default character encoding: %s", encoding);
        }


        if (var_InheritBool (p_dec, "subsdec-autodetect-utf8"))
        {
            msg_Dbg (p_dec, "using automatic UTF-8 detection");
            p_sys->b_autodetect_utf8 = 1;
        }
    }

    if (strcasecmp (encoding, "UTF-8") && strcasecmp (encoding, "utf8"))
    {
        p_sys->iconv_handle = vlc_iconv_open ("UTF-8", encoding);
        if (p_sys->iconv_handle == (vlc_iconv_t)(-1))
            msg_Err (p_dec, "cannot convert from %s: %s", encoding,
                     vlc_strerror_c(errno));
    }
    free (var);

    p_sys->i_align = var_InheritInteger( p_dec, "subsdec-align" );

    return VLC_SUCCESS;
}
