
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* bits; } ;
struct TYPE_6__ {size_t classCount; struct TYPE_6__* classList; TYPE_1__ u; scalar_t__ converted; } ;
typedef TYPE_2__ regexp_t ;
typedef size_t UINT ;


 int heap_free (TYPE_2__*) ;

void regexp_destroy(regexp_t *re)
{
    if (re->classList) {
        UINT i;
        for (i = 0; i < re->classCount; i++) {
            if (re->classList[i].converted)
                heap_free(re->classList[i].u.bits);
            re->classList[i].u.bits = ((void*)0);
        }
        heap_free(re->classList);
    }
    heap_free(re);
}
