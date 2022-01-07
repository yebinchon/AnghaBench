
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ tag; } ;
struct TYPE_5__ {size_t language_count; TYPE_2__* languages; } ;
typedef scalar_t__ OPENTYPE_TAG ;
typedef TYPE_1__ LoadedScript ;
typedef TYPE_2__ LoadedLanguage ;



__attribute__((used)) static LoadedLanguage *usp10_script_get_language(LoadedScript *script, OPENTYPE_TAG tag)
{
    size_t i;

    for (i = 0; i < script->language_count; ++i)
    {
        if (script->languages[i].tag == tag)
            return &script->languages[i];
    }

    return ((void*)0);
}
