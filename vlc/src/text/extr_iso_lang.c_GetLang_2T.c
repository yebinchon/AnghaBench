
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int psz_iso639_2T; scalar_t__ psz_eng_name; } ;
typedef TYPE_1__ iso639_lang_t ;


 TYPE_1__* p_languages ;
 int strncasecmp (int ,char const*,int) ;
 TYPE_1__ const unknown_language ;

const iso639_lang_t * GetLang_2T( const char * psz_code )
{
    const iso639_lang_t *p_lang;

    for( p_lang = p_languages; p_lang->psz_eng_name; p_lang++ )
        if( !strncasecmp( p_lang->psz_iso639_2T, psz_code, 3 ) )
            return p_lang;

    return &unknown_language;
}
