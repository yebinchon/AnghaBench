
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ name; } ;
typedef TYPE_1__ type_t ;


 scalar_t__ strcmp (scalar_t__,scalar_t__) ;

__attribute__((used)) static int compare_type(const type_t *a, const type_t *b)
{
    if (a == b
        || (a->name
            && b->name
            && strcmp(a->name, b->name) == 0))
        return 0;

    return 1;
}
