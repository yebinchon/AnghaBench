
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* psz_capability; } ;
typedef TYPE_1__ module_t ;



const char *module_get_capability (const module_t *m)
{
    return (m->psz_capability != ((void*)0)) ? m->psz_capability : "none";
}
