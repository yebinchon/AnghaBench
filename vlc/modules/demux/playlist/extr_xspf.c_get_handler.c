
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int name; } ;
typedef TYPE_1__ xml_elem_hnd_t ;


 int strcmp (char const*,int ) ;

__attribute__((used)) static const xml_elem_hnd_t *get_handler(const xml_elem_hnd_t *tab, size_t n, const char *name)
{
    for (size_t i = 0; i < n; i++)
        if (!strcmp(name, tab[i].name))
            return &tab[i];
    return ((void*)0);
}
