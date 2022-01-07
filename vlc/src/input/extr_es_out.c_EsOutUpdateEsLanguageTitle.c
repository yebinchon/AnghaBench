
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int psz_title; int psz_language_code; int psz_language; } ;
typedef TYPE_1__ es_out_id_t ;
struct TYPE_7__ {int psz_language; } ;
typedef TYPE_2__ es_format_t ;


 int EsGetTitle (TYPE_1__*) ;
 int LanguageGetCode (int ) ;
 int LanguageGetName (int ) ;
 int free (int ) ;

__attribute__((used)) static void EsOutUpdateEsLanguageTitle(es_out_id_t *es,
                                     const es_format_t *fmt)
{
    free( es->psz_title );
    free( es->psz_language );
    free( es->psz_language_code );

    es->psz_language = LanguageGetName( fmt->psz_language );
    es->psz_language_code = LanguageGetCode( fmt->psz_language );

    es->psz_title = EsGetTitle(es);
}
