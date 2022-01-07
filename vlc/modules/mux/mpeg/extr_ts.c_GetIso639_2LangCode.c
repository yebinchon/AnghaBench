
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char const* psz_iso639_2T; } ;
typedef TYPE_1__ iso639_lang_t ;


 TYPE_1__* GetLang_1 (char const*) ;
 TYPE_1__* GetLang_2B (char const*) ;
 TYPE_1__* GetLang_2T (char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static const char *GetIso639_2LangCode(const char *lang)
{
    const iso639_lang_t *pl;

    if (strlen(lang) == 2)
    {
        pl = GetLang_1(lang);
    }
    else
    {
        pl = GetLang_2B(lang);
        if (!*pl->psz_iso639_2T)
            pl = GetLang_2T(lang);

    }

    return pl->psz_iso639_2T;
}
