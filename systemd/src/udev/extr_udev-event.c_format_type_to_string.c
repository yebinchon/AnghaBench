
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; char const* name; } ;
typedef scalar_t__ FormatSubstitutionType ;


 size_t ELEMENTSOF (TYPE_1__*) ;
 TYPE_1__* map ;

__attribute__((used)) static const char *format_type_to_string(FormatSubstitutionType t) {
        for (size_t i = 0; i < ELEMENTSOF(map); i++)
                if (map[i].type == t)
                        return map[i].name;
        return ((void*)0);
}
