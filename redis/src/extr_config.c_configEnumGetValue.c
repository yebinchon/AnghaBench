
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int val; int * name; } ;
typedef TYPE_1__ configEnum ;


 int INT_MIN ;
 int strcasecmp (int *,char*) ;

int configEnumGetValue(configEnum *ce, char *name) {
    while(ce->name != ((void*)0)) {
        if (!strcasecmp(ce->name,name)) return ce->val;
        ce++;
    }
    return INT_MIN;
}
