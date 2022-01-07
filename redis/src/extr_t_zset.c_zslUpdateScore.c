
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_15__ {double score; int * ele; TYPE_2__* level; TYPE_1__* backward; } ;
typedef TYPE_3__ zskiplistNode ;
struct TYPE_16__ {int level; TYPE_3__* header; } ;
typedef TYPE_4__ zskiplist ;
typedef int sds ;
struct TYPE_14__ {TYPE_3__* forward; } ;
struct TYPE_13__ {double score; } ;


 int ZSKIPLIST_MAXLEVEL ;
 scalar_t__ sdscmp (int *,int ) ;
 int serverAssert (int) ;
 int zslDeleteNode (TYPE_4__*,TYPE_3__*,TYPE_3__**) ;
 int zslFreeNode (TYPE_3__*) ;
 TYPE_3__* zslInsert (TYPE_4__*,double,int *) ;

zskiplistNode *zslUpdateScore(zskiplist *zsl, double curscore, sds ele, double newscore) {
    zskiplistNode *update[ZSKIPLIST_MAXLEVEL], *x;
    int i;



    x = zsl->header;
    for (i = zsl->level-1; i >= 0; i--) {
        while (x->level[i].forward &&
                (x->level[i].forward->score < curscore ||
                    (x->level[i].forward->score == curscore &&
                     sdscmp(x->level[i].forward->ele,ele) < 0)))
        {
            x = x->level[i].forward;
        }
        update[i] = x;
    }



    x = x->level[0].forward;
    serverAssert(x && curscore == x->score && sdscmp(x->ele,ele) == 0);




    if ((x->backward == ((void*)0) || x->backward->score < newscore) &&
        (x->level[0].forward == ((void*)0) || x->level[0].forward->score > newscore))
    {
        x->score = newscore;
        return x;
    }



    zslDeleteNode(zsl, x, update);
    zskiplistNode *newnode = zslInsert(zsl,newscore,x->ele);


    x->ele = ((void*)0);
    zslFreeNode(x);
    return newnode;
}
