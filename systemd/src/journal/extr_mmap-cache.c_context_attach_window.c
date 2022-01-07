
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int in_unused; int contexts; struct TYPE_11__* window; struct TYPE_11__* unused_prev; TYPE_1__* cache; } ;
typedef TYPE_2__ Window ;
struct TYPE_10__ {TYPE_2__* last_unused; int unused; } ;
typedef TYPE_2__ Context ;


 int LIST_PREPEND (int ,int ,TYPE_2__*) ;
 int LIST_REMOVE (int ,int ,TYPE_2__*) ;
 int assert (TYPE_2__*) ;
 int by_window ;
 int context_detach_window (TYPE_2__*) ;
 int unused ;

__attribute__((used)) static void context_attach_window(Context *c, Window *w) {
        assert(c);
        assert(w);

        if (c->window == w)
                return;

        context_detach_window(c);

        if (w->in_unused) {

                LIST_REMOVE(unused, c->cache->unused, w);
                if (c->cache->last_unused == w)
                        c->cache->last_unused = w->unused_prev;

                w->in_unused = 0;
        }

        c->window = w;
        LIST_PREPEND(by_window, w->contexts, c);
}
