
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int ele; } ;
typedef TYPE_3__ zskiplistNode ;
struct TYPE_13__ {TYPE_2__* header; TYPE_3__* tail; } ;
typedef TYPE_4__ zskiplist ;
struct TYPE_14__ {scalar_t__ maxex; scalar_t__ minex; int max; int min; } ;
typedef TYPE_5__ zlexrangespec ;
struct TYPE_11__ {TYPE_1__* level; } ;
struct TYPE_10__ {TYPE_3__* forward; } ;


 int sdscmplex (int ,int ) ;
 int zslLexValueGteMin (int ,TYPE_5__*) ;
 int zslLexValueLteMax (int ,TYPE_5__*) ;

int zslIsInLexRange(zskiplist *zsl, zlexrangespec *range) {
    zskiplistNode *x;


    int cmp = sdscmplex(range->min,range->max);
    if (cmp > 0 || (cmp == 0 && (range->minex || range->maxex)))
        return 0;
    x = zsl->tail;
    if (x == ((void*)0) || !zslLexValueGteMin(x->ele,range))
        return 0;
    x = zsl->header->level[0].forward;
    if (x == ((void*)0) || !zslLexValueLteMax(x->ele,range))
        return 0;
    return 1;
}
