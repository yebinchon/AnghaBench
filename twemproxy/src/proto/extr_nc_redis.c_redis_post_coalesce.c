
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg {int type; scalar_t__ ferror; scalar_t__ error; struct msg* frag_owner; scalar_t__ request; struct msg* peer; } ;


 int ASSERT (int) ;



 int NOT_REACHED () ;
 void redis_post_coalesce_del (struct msg*) ;
 void redis_post_coalesce_mget (struct msg*) ;
 void redis_post_coalesce_mset (struct msg*) ;

void
redis_post_coalesce(struct msg *r)
{
    struct msg *pr = r->peer;

    ASSERT(!pr->request);
    ASSERT(r->request && (r->frag_owner == r));
    if (r->error || r->ferror) {

        return;
    }

    switch (r->type) {
    case 129:
        return redis_post_coalesce_mget(r);

    case 130:
        return redis_post_coalesce_del(r);

    case 128:
        return redis_post_coalesce_mset(r);

    default:
        NOT_REACHED();
    }
}
