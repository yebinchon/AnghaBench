
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* psz_eng_name; char const* psz_iso639_1; char const* psz_iso639_2T; char const* psz_iso639_2B; } ;
typedef TYPE_1__ iso639_lang_t ;
typedef int demux_t ;


 char const* LANGUAGE_DEFAULT ;
 int free (char*) ;
 TYPE_1__* p_languages ;
 int strcasecmp (char const*,char*) ;
 char* strchr (char*,char) ;
 char* var_CreateGetString (int *,char const*) ;

__attribute__((used)) static const char *DemuxGetLanguageCode( demux_t *p_demux, const char *psz_var )
{
    const iso639_lang_t *pl;
    char *psz_lang;
    char *p;

    psz_lang = var_CreateGetString( p_demux, psz_var );
    if( !psz_lang )
        return LANGUAGE_DEFAULT;



    if( ( p = strchr( psz_lang, ',' ) ) )
        *p = '\0';

    for( pl = p_languages; pl->psz_eng_name != ((void*)0); pl++ )
    {
        if( *psz_lang == '\0' )
            continue;
        if( !strcasecmp( pl->psz_eng_name, psz_lang ) ||
            !strcasecmp( pl->psz_iso639_1, psz_lang ) ||
            !strcasecmp( pl->psz_iso639_2T, psz_lang ) ||
            !strcasecmp( pl->psz_iso639_2B, psz_lang ) )
            break;
    }

    free( psz_lang );

    if( pl->psz_eng_name != ((void*)0) )
        return pl->psz_iso639_2T;

    return LANGUAGE_DEFAULT;
}
