
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int tag; } ;
struct TYPE_5__ {scalar_t__ language_count; TYPE_2__* languages; int languages_size; } ;
typedef int OPENTYPE_TAG ;
typedef TYPE_1__ LoadedScript ;
typedef TYPE_2__ LoadedLanguage ;


 int ERR (char*) ;
 int usp10_array_reserve (void**,int *,scalar_t__,int) ;

__attribute__((used)) static LoadedLanguage *usp10_script_add_language(LoadedScript *script, OPENTYPE_TAG tag)
{
    LoadedLanguage *language;

    if (!usp10_array_reserve((void **)&script->languages, &script->languages_size,
            script->language_count + 1, sizeof(*script->languages)))
    {
        ERR("Failed to grow languages array.\n");
        return ((void*)0);
    }

    language = &script->languages[script->language_count++];
    language->tag = tag;

    return language;
}
