
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int ele; TYPE_1__* level; } ;
typedef TYPE_2__ zskiplistNode ;
struct TYPE_11__ {int level; TYPE_2__* header; } ;
typedef TYPE_3__ zskiplist ;
typedef int zlexrangespec ;
typedef int dict ;
struct TYPE_9__ {TYPE_2__* forward; } ;


 int ZSKIPLIST_MAXLEVEL ;
 int dictDelete (int *,int ) ;
 int zslDeleteNode (TYPE_3__*,TYPE_2__*,TYPE_2__**) ;
 int zslFreeNode (TYPE_2__*) ;
 int zslLexValueGteMin (int ,int *) ;
 scalar_t__ zslLexValueLteMax (int ,int *) ;

unsigned long zslDeleteRangeByLex(zskiplist *zsl, zlexrangespec *range, dict *dict) {
    zskiplistNode *update[ZSKIPLIST_MAXLEVEL], *x;
    unsigned long removed = 0;
    int i;


    x = zsl->header;
    for (i = zsl->level-1; i >= 0; i--) {
        while (x->level[i].forward &&
            !zslLexValueGteMin(x->level[i].forward->ele,range))
                x = x->level[i].forward;
        update[i] = x;
    }


    x = x->level[0].forward;


    while (x && zslLexValueLteMax(x->ele,range)) {
        zskiplistNode *next = x->level[0].forward;
        zslDeleteNode(zsl,x,update);
        dictDelete(dict,x->ele);
        zslFreeNode(x);
        removed++;
        x = next;
    }
    return removed;
}
