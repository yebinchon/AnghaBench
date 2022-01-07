
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char const* name; } ;
typedef TYPE_1__ NamingScheme ;


 size_t ELEMENTSOF (TYPE_1__ const*) ;
 TYPE_1__ const* naming_schemes ;
 scalar_t__ streq (char const*,char const*) ;

__attribute__((used)) static const NamingScheme* naming_scheme_from_name(const char *name) {
        size_t i;

        if (streq(name, "latest"))
                return naming_schemes + ELEMENTSOF(naming_schemes) - 1;

        for (i = 0; i < ELEMENTSOF(naming_schemes); i++)
                if (streq(naming_schemes[i].name, name))
                        return naming_schemes + i;

        return ((void*)0);
}
