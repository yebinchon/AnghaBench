
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int i_shortcuts; char** pp_shortcuts; } ;
typedef TYPE_1__ module_t ;


 char* module_get_object (TYPE_1__ const*) ;
 scalar_t__ strcmp (char const*,char const*) ;
 int * strstr (char const*,char const*) ;

__attribute__((used)) static bool module_match(const module_t *m, const char *pattern, bool strict)
{
    if (pattern == ((void*)0))
        return 1;

    const char *objname = module_get_object(m);

    if (strict ? (strcmp(objname, pattern) == 0)
               : (strstr(objname, pattern) != ((void*)0)))
        return 1;

    for (unsigned i = 0; i < m->i_shortcuts; i++)
    {
        const char *shortcut = m->pp_shortcuts[i];

        if (strict ? (strcmp(shortcut, pattern) == 0)
                   : (strstr(shortcut, pattern) != ((void*)0)))
            return 1;
    }
    return 0;
}
