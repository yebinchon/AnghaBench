
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int memcpy (char*,void const*,int) ;
 int memset (char*,int ,int) ;

__attribute__((used)) static bool decodeQtLanguageCode( uint16_t i_language_code, char *psz_iso,
                                  bool *b_mactables )
{
    static const char * psz_qt_to_iso639_2T_lower =
            "eng" "fra" "deu" "ita" "nld"
            "swe" "spa" "dan" "por" "nor"
            "heb" "jpn" "ara" "fin" "gre"
            "isl" "mlt" "tur" "hrv" "zho"
            "urd" "hin" "tha" "kor" "lit"
            "pol" "hun" "est" "lav" "sme"
            "fao" "fas" "rus" "zho" "nld"
            "gle" "sqi" "ron" "ces" "slk"
            "slv" "yid" "srp" "mkd" "bul"
            "ukr" "bel" "uzb" "kaz" "aze"
            "aze" "hye" "kat" "mol" "kir"
            "tgk" "tuk" "mon" "mon" "pus"
            "kur" "kas" "snd" "bod" "nep"
            "san" "mar" "ben" "asm" "guj"
            "pan" "ori" "mal" "kan" "tam"
            "tel" "sin" "mya" "khm" "lao"
            "vie" "ind" "tgl" "msa" "msa"
            "amh" "tir" "orm" "som" "swa"
            "kin" "run" "nya" "mlg" "epo"
            ;

    static const char * psz_qt_to_iso639_2T_upper =
            "cym" "eus" "cat" "lat" "que"
            "grn" "aym" "tat" "uig" "dzo"
            "jaw" "sun" "glg" "afr" "bre"
            "iku" "gla" "glv" "gle" "ton"
            "gre"
            ;

    if ( i_language_code < 0x400 || i_language_code == 0x7FFF )
    {
        const void *p_data;
        *b_mactables = 1;
        if ( i_language_code <= 94 )
        {
            p_data = psz_qt_to_iso639_2T_lower + i_language_code * 3;
        }
        else if ( i_language_code >= 128 && i_language_code <= 148 )
        {
            i_language_code -= 128;
            p_data = psz_qt_to_iso639_2T_upper + i_language_code * 3;
        }
        else
            return 0;
        memcpy( psz_iso, p_data, 3 );
    }
    else
    {
        *b_mactables = 0;



        if( i_language_code == 0x55C4 )
        {
            memset( psz_iso, 0, 3 );
            return 0;
        }

        for( unsigned i = 0; i < 3; i++ )
            psz_iso[i] = ( ( i_language_code >> ( (2-i)*5 ) )&0x1f ) + 0x60;
    }
    return 1;
}
