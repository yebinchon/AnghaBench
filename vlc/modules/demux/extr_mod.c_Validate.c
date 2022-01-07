
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char uint8_t ;
struct TYPE_3__ {int s; } ;
typedef TYPE_1__ demux_t ;


 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 char* memchr (char const*,char,int) ;
 int memcmp (char const*,char const*,int const) ;
 int strcasecmp (char const*,char const*) ;
 int strlen (char const*) ;
 int vlc_stream_Peek (int ,char const**,int) ;

__attribute__((used)) static int Validate( demux_t *p_demux, const char *psz_ext )
{
    static const struct
    {
        int i_offset;
        const char *psz_marker;
    } p_marker[] = {
        { 0, "ziRCONia" },
        { 0, "Extended Module" },
        { 44, "SCRM" },
        { 0, "IMPM" },
        { 0, "GF1PATCH110" },
        { 20, "!SCREAM!" },
        { 20, "!Scream!" },
        { 20, "BMOD2STM" },
        { 0, "MMD0" },
        { 0, "MMD1" },
        { 0, "MMD2" },
        { 0, "MMD3" },
        { 0, "MTM" },
        { 0, "DMDL" },
        { 0, "DBM0" },
        { 0, "if" },
        { 0, "JN" },
        { 0, "FAR\xfe" },
        { 0, "Extreme" },
        { 0, "OKTASONGCMOD" },
        { 44, "PTMF" },
        { 0, "MAS_UTrack_V00" },
        { 0, "DDMF" },
        { 8, "DSMFSONG" },
        { 0, "\xc1\x83\x2a\x9e" },
        { 0, "ASYLUM Music Format V1.0" },
        { 0, "AMF" },
        { 0, "PSM\xfe" },
        { 0, "PSM " },
        { 0, "MT20" },

        { 1080, "M.K." },
        { 1080, "M!K!" },
        { 1080, "M&K!" },
        { 1080, "N.T." },
        { 1080, "CD81" },
        { 1080, "OKTA" },
        { 1080, "16CN" },
        { 1080, "32CN" },
        { 1080, "FLT4" },
        { 1080, "FLT8" },
        { 1080, "6CHN" },
        { 1080, "8CHN" },
        { 1080, "FLT" },
        { 1080, "TDZ" },
        { 1081, "CHN" },
        { 1082, "CH" },

        { -1, ((void*)0) }
    };
    static const char *ppsz_mod_ext[] =
    {
        "mod", "s3m", "xm", "it", "669", "amf", "ams", "dbm", "dmf", "dsm",
        "far", "mdl", "med", "mtm", "okt", "ptm", "stm", "ult", "umx", "mt2",
        "psm", "abc", ((void*)0)
    };
    bool has_valid_extension = 0;
    if( psz_ext )
    {
        for( int i = 0; ppsz_mod_ext[i] != ((void*)0); i++ )
        {
            has_valid_extension |= !strcasecmp( psz_ext, ppsz_mod_ext[i] );
            if( has_valid_extension )
                break;
        }
    }

    const uint8_t *p_peek;
    const int i_peek = vlc_stream_Peek( p_demux->s, &p_peek, 2048 );
    if( i_peek < 4 )
        return VLC_EGENERIC;

    for( int i = 0; p_marker[i].i_offset >= 0; i++ )
    {
        const char *psz_marker = p_marker[i].psz_marker;
        const int i_size = strlen( psz_marker );
        const int i_offset = p_marker[i].i_offset;

        if( i_peek < i_offset + i_size )
            continue;

        if( !memcmp( &p_peek[i_offset], psz_marker, i_size ) )
        {
            if( i_size >= 4 || has_valid_extension )
                return VLC_SUCCESS;
        }
    }






    if( psz_ext && !strcasecmp( psz_ext, "abc" ) )
    {
        bool b_k = 0;
        bool b_tx = 0;

        for( int i = 0; i < i_peek-1; i++ )
        {
            b_k |= p_peek[i+0] == 'K' && p_peek[i+1] == ':';
            b_tx |= ( p_peek[i+0] == 'X' || p_peek[i+0] == 'T') && p_peek[i+1] == ':';
        }
        if( !b_k || !b_tx )
            return VLC_EGENERIC;
        return VLC_SUCCESS;
    }


    if( psz_ext && !strcasecmp( psz_ext, "mod" ) && i_peek >= 20 + 15 * 30 )
    {

        const uint8_t *p = memchr( p_peek, '\0', 20 );
        if( p )
        {
            for( ; p < &p_peek[20]; p++ )
            {
                if( *p )
                    return VLC_EGENERIC;
            }
        }

        for( int i = 0; i < 15; i++ )
        {
            const uint8_t *p_sample = &p_peek[20 + i*30];


            p = memchr( &p_sample[0], '\0', 22 );
            if( p )
            {
                for( ; p < &p_sample[22]; p++ )
                {
                    if( *p )
                        return VLC_EGENERIC;
                }
            }

            if( p_sample[25] > 64 )
                return VLC_EGENERIC;
        }
        return VLC_SUCCESS;
    }
    return VLC_EGENERIC;
}
