
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int maxex; int * max; int minex; int * min; } ;
typedef TYPE_1__ zlexrangespec ;
struct TYPE_9__ {scalar_t__ encoding; } ;
typedef TYPE_2__ robj ;


 int C_ERR ;
 int C_OK ;
 scalar_t__ OBJ_ENCODING_INT ;
 int zslFreeLexRange (TYPE_1__*) ;
 int zslParseLexRangeItem (TYPE_2__*,int **,int *) ;

int zslParseLexRange(robj *min, robj *max, zlexrangespec *spec) {


    if (min->encoding == OBJ_ENCODING_INT ||
        max->encoding == OBJ_ENCODING_INT) return C_ERR;

    spec->min = spec->max = ((void*)0);
    if (zslParseLexRangeItem(min, &spec->min, &spec->minex) == C_ERR ||
        zslParseLexRangeItem(max, &spec->max, &spec->maxex) == C_ERR) {
        zslFreeLexRange(spec);
        return C_ERR;
    } else {
        return C_OK;
    }
}
