
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int score; TYPE_1__* level; } ;
typedef TYPE_2__ zskiplistNode ;
struct TYPE_9__ {int level; TYPE_2__* header; } ;
typedef TYPE_3__ zskiplist ;
typedef int zrangespec ;
struct TYPE_7__ {TYPE_2__* forward; } ;


 int serverAssert (int ) ;
 int zslIsInRange (TYPE_3__*,int *) ;
 int zslValueGteMin (int ,int *) ;
 int zslValueLteMax (int ,int *) ;

zskiplistNode *zslFirstInRange(zskiplist *zsl, zrangespec *range) {
    zskiplistNode *x;
    int i;


    if (!zslIsInRange(zsl,range)) return ((void*)0);

    x = zsl->header;
    for (i = zsl->level-1; i >= 0; i--) {

        while (x->level[i].forward &&
            !zslValueGteMin(x->level[i].forward->score,range))
                x = x->level[i].forward;
    }


    x = x->level[0].forward;
    serverAssert(x != ((void*)0));


    if (!zslValueLteMax(x->score,range)) return ((void*)0);
    return x;
}
