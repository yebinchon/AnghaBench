
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* value; int name; } ;
typedef TYPE_1__ attribute_t ;


 scalar_t__ strcasecmp (int ,char const*) ;

__attribute__((used)) static const char *GetAttribute (attribute_t **tab, unsigned n,
                                 const char *name)
{
    for (unsigned i = 0; i < n; i++)
        if (strcasecmp (tab[i]->name, name) == 0)
            return tab[i]->value;
    return ((void*)0);
}
