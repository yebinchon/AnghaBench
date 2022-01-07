
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int in_unused; int keep_always; int contexts; } ;
typedef TYPE_2__ Window ;
struct TYPE_12__ {TYPE_1__* cache; int window; } ;
struct TYPE_10__ {TYPE_2__* last_unused; int unused; } ;
typedef TYPE_3__ Context ;


 int LIST_PREPEND (int ,int ,TYPE_2__*) ;
 int LIST_REMOVE (int ,int ,TYPE_3__*) ;
 TYPE_2__* TAKE_PTR (int ) ;
 int assert (TYPE_3__*) ;
 int by_window ;
 int unused ;
 int window_free (TYPE_2__*) ;

__attribute__((used)) static void context_detach_window(Context *c) {
        Window *w;

        assert(c);

        if (!c->window)
                return;

        w = TAKE_PTR(c->window);
        LIST_REMOVE(by_window, w->contexts, c);

        if (!w->contexts && !w->keep_always) {






                LIST_PREPEND(unused, c->cache->unused, w);
                if (!c->cache->last_unused)
                        c->cache->last_unused = w;

                w->in_unused = 1;

        }
}
