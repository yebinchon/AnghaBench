
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* name; int val; } ;
typedef TYPE_1__ configEnum ;



const char *configEnumGetName(configEnum *ce, int val) {
    while(ce->name != ((void*)0)) {
        if (ce->val == val) return ce->name;
        ce++;
    }
    return ((void*)0);
}
