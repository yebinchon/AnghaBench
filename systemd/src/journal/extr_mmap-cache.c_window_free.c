
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* cache; } ;
typedef TYPE_2__ Window ;
struct TYPE_7__ {int n_windows; } ;


 int assert (TYPE_2__*) ;
 int free (TYPE_2__*) ;
 int window_unlink (TYPE_2__*) ;

__attribute__((used)) static void window_free(Window *w) {
        assert(w);

        window_unlink(w);
        w->cache->n_windows--;
        free(w);
}
