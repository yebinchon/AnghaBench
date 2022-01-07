
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {int lru_index; scalar_t__ in_lru; int pid; } ;
struct TYPE_13__ {int client_contexts_lru; int client_contexts; } ;
typedef TYPE_1__ Server ;
typedef TYPE_2__ ClientContext ;


 int PID_TO_PTR (int ) ;
 int assert (TYPE_1__*) ;
 int assert_se (int) ;
 int client_context_reset (TYPE_1__*,TYPE_2__*) ;
 TYPE_2__* hashmap_remove (int ,int ) ;
 TYPE_2__* mfree (TYPE_2__*) ;
 scalar_t__ prioq_remove (int ,TYPE_2__*,int *) ;

__attribute__((used)) static ClientContext* client_context_free(Server *s, ClientContext *c) {
        assert(s);

        if (!c)
                return ((void*)0);

        assert_se(hashmap_remove(s->client_contexts, PID_TO_PTR(c->pid)) == c);

        if (c->in_lru)
                assert_se(prioq_remove(s->client_contexts_lru, c, &c->lru_index) >= 0);

        client_context_reset(s, c);

        return mfree(c);
}
