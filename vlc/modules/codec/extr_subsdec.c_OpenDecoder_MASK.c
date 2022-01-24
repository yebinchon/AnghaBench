#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  scalar_t__ vlc_iconv_t ;
struct TYPE_13__ {char* psz_encoding; } ;
struct TYPE_14__ {int i_codec; TYPE_2__ subs; } ;
struct TYPE_12__ {scalar_t__ i_codec; } ;
struct TYPE_15__ {TYPE_3__ fmt_in; TYPE_1__ fmt_out; int /*<<< orphan*/  pf_decode; TYPE_5__* p_sys; } ;
typedef  TYPE_4__ decoder_t ;
struct TYPE_16__ {int i_align; scalar_t__ iconv_handle; int b_autodetect_utf8; } ;
typedef  TYPE_5__ decoder_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  DecodeBlock ; 
#define  VLC_CODEC_ITU_T140 129 
#define  VLC_CODEC_SUBT 128 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 TYPE_5__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,char*,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 scalar_t__ FUNC6 (TYPE_4__*,char*) ; 
 int FUNC7 (TYPE_4__*,char*) ; 
 char* FUNC8 (TYPE_4__*,char*) ; 
 scalar_t__ FUNC9 (char*,char const*) ; 
 char* FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12( vlc_object_t *p_this )
{
    decoder_t     *p_dec = (decoder_t*)p_this;
    decoder_sys_t *p_sys;

    switch( p_dec->fmt_in.i_codec )
    {
        case VLC_CODEC_SUBT:
        case VLC_CODEC_ITU_T140:
            break;
        default:
            return VLC_EGENERIC;
    }

    /* Allocate the memory needed to store the decoder's structure */
    p_dec->p_sys = p_sys = FUNC0( 1, sizeof( *p_sys ) );
    if( p_sys == NULL )
        return VLC_ENOMEM;

    p_dec->pf_decode = DecodeBlock;
    p_dec->fmt_out.i_codec = 0;

    /* init of p_sys */
    p_sys->i_align = -1;
    p_sys->iconv_handle = (vlc_iconv_t)-1;
    p_sys->b_autodetect_utf8 = false;

    const char *encoding;
    char *var = NULL;

    /* First try demux-specified encoding */
    if( p_dec->fmt_in.i_codec == VLC_CODEC_ITU_T140 )
        encoding = "UTF-8"; /* IUT T.140 is always using UTF-8 */
    else
    if( p_dec->fmt_in.subs.psz_encoding && *p_dec->fmt_in.subs.psz_encoding )
    {
        encoding = p_dec->fmt_in.subs.psz_encoding;
        FUNC2 (p_dec, "trying demuxer-specified character encoding: %s",
                 encoding);
    }
    else
    {
        /* Second, try configured encoding */
        if ((var = FUNC8 (p_dec, "subsdec-encoding")) != NULL)
        {
            FUNC2 (p_dec, "trying configured character encoding: %s", var);
            if (!FUNC5 (var, "system"))
            {
                FUNC1 (var);
                var = NULL;
                encoding = "";
                /* ^ iconv() treats "" as nl_langinfo(CODESET) */
            }
            else
                encoding = var;
        }
        else
        /* Third, try "local" encoding */
        {
        /* xgettext:
           The Windows ANSI code page most commonly used for this language.
           VLC uses this as a guess of the subtitle files character set
           (if UTF-8 and UTF-16 autodetection fails).
           Western European languages normally use "CP1252", which is a
           Microsoft-variant of ISO 8859-1. That suits the Latin alphabet.
           Other scripts use other code pages.

           This MUST be a valid iconv character set. If unsure, please refer
           the VideoLAN translators mailing list. */
            encoding = FUNC10("GetACP", "CP1252");
            FUNC2 (p_dec, "trying default character encoding: %s", encoding);
        }

        /* Check UTF-8 autodetection */
        if (FUNC6 (p_dec, "subsdec-autodetect-utf8"))
        {
            FUNC2 (p_dec, "using automatic UTF-8 detection");
            p_sys->b_autodetect_utf8 = true;
        }
    }

    if (FUNC4 (encoding, "UTF-8") && FUNC4 (encoding, "utf8"))
    {
        p_sys->iconv_handle = FUNC9 ("UTF-8", encoding);
        if (p_sys->iconv_handle == (vlc_iconv_t)(-1))
            FUNC3 (p_dec, "cannot convert from %s: %s", encoding,
                     FUNC11(errno));
    }
    FUNC1 (var);

    p_sys->i_align = FUNC7( p_dec, "subsdec-align" );

    return VLC_SUCCESS;
}