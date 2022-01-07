
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* plugin; } ;
typedef TYPE_2__ module_t ;
struct TYPE_4__ {char* textdomain; } ;


 char const* PACKAGE_NAME ;
 char const* dgettext (char const*,char const*) ;
 scalar_t__ unlikely (int) ;

const char *module_gettext (const module_t *m, const char *str)
{
    if (unlikely(str == ((void*)0) || *str == '\0'))
        return "";




    (void)m;
    return str;

}
