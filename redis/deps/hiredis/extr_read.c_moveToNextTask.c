
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t ridx; TYPE_2__* rstack; } ;
typedef TYPE_1__ redisReader ;
struct TYPE_5__ {scalar_t__ type; int idx; int elements; } ;
typedef TYPE_2__ redisReadTask ;


 scalar_t__ REDIS_REPLY_ARRAY ;
 scalar_t__ REDIS_REPLY_MAP ;
 scalar_t__ REDIS_REPLY_SET ;
 int assert (int) ;

__attribute__((used)) static void moveToNextTask(redisReader *r) {
    redisReadTask *cur, *prv;
    while (r->ridx >= 0) {

        if (r->ridx == 0) {
            r->ridx--;
            return;
        }

        cur = &(r->rstack[r->ridx]);
        prv = &(r->rstack[r->ridx-1]);
        assert(prv->type == REDIS_REPLY_ARRAY ||
               prv->type == REDIS_REPLY_MAP ||
               prv->type == REDIS_REPLY_SET);
        if (cur->idx == prv->elements-1) {
            r->ridx--;
        } else {

            assert(cur->idx < prv->elements);
            cur->type = -1;
            cur->elements = -1;
            cur->idx++;
            return;
        }
    }
}
