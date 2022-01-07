
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_fourcc_t ;
struct str2quirks {char* member_0; int member_1; char* psz_name; int i_quirks; } ;
typedef enum es_format_category_e { ____Placeholder_es_format_category_e } es_format_category_e ;


 int AUDIO_ES ;

 int OMXCODEC_NO_QUIRKS ;



 int VIDEO_ES ;




 size_t __MIN (size_t,unsigned int) ;
 size_t strlen (char const*) ;
 int strncmp (char const*,char const*,size_t) ;

int OMXCodec_GetQuirks( enum es_format_category_e i_cat, vlc_fourcc_t i_codec,
                        const char *p_name, unsigned int i_name_len )
{
    static const struct str2quirks quirks_prefix[] = {
        { "OMX.MTK.VIDEO.DECODER.MPEG4", 134 },
        { "OMX.Marvell", 135 },
        { "OMX.SEC.avc.dec", 133 },
        { "OMX.SEC.avcdec", 133 },
        { "OMX.SEC.MPEG4.Decoder", 133 },
        { "OMX.SEC.mpeg4.dec", 133 },
        { "OMX.SEC.vc1.dec", 133 },
        { "OMX.amlogic.avc.decoder.awesome", 132 },
        { ((void*)0), 0 }
    };

    static struct str2quirks quirks_suffix[] = {
        { ((void*)0), 0 }
    };

    int i_quirks = OMXCODEC_NO_QUIRKS;

    if( i_cat == VIDEO_ES )
    {
        switch( i_codec )
        {
        case 131:
        case 129:
            i_quirks |= 134;
            break;
        }
    } else if( i_cat == AUDIO_ES )
    {
        switch( i_codec )
        {
        case 128:
        case 130:
            i_quirks |= 134;
            break;
        }
    }



    for( const struct str2quirks *p_q_prefix = quirks_prefix; p_q_prefix->psz_name;
         p_q_prefix++ )
    {
        const char *psz_prefix = p_q_prefix->psz_name;
        if( !strncmp( p_name, psz_prefix,
           __MIN( strlen(psz_prefix), i_name_len ) ) )
           i_quirks |= p_q_prefix->i_quirks;
    }

    for( const struct str2quirks *p_q_suffix = quirks_suffix; p_q_suffix->psz_name;
         p_q_suffix++ )
    {
        const char *psz_suffix = p_q_suffix->psz_name;
        size_t i_suffix_len = strlen( psz_suffix );

        if( i_name_len > i_suffix_len
         && !strncmp( p_name + i_name_len - i_suffix_len, psz_suffix,
                      i_suffix_len ) )
           i_quirks |= p_q_suffix->i_quirks;
    }

    return i_quirks;
}
