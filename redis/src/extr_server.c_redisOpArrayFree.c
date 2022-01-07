
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int numops; TYPE_2__* ops; } ;
typedef TYPE_1__ redisOpArray ;
struct TYPE_7__ {int argc; struct TYPE_7__* argv; } ;
typedef TYPE_2__ redisOp ;


 int decrRefCount (TYPE_2__) ;
 int zfree (TYPE_2__*) ;

void redisOpArrayFree(redisOpArray *oa) {
    while(oa->numops) {
        int j;
        redisOp *op;

        oa->numops--;
        op = oa->ops+oa->numops;
        for (j = 0; j < op->argc; j++)
            decrRefCount(op->argv[j]);
        zfree(op->argv);
    }
    zfree(oa->ops);
}
