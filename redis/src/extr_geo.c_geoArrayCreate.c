
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ used; scalar_t__ buckets; int * array; } ;
typedef TYPE_1__ geoArray ;


 TYPE_1__* zmalloc (int) ;

geoArray *geoArrayCreate(void) {
    geoArray *ga = zmalloc(sizeof(*ga));

    ga->array = ((void*)0);
    ga->buckets = 0;
    ga->used = 0;
    return ga;
}
