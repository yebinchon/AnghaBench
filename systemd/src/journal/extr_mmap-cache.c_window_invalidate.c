
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int invalidated; scalar_t__ ptr; int prot; int size; } ;
typedef TYPE_1__ Window ;


 int MAP_ANONYMOUS ;
 int MAP_FIXED ;
 int MAP_PRIVATE ;
 int assert (TYPE_1__*) ;
 int assert_se (int) ;
 scalar_t__ mmap (scalar_t__,int ,int ,int,int,int ) ;

__attribute__((used)) static void window_invalidate(Window *w) {
        assert(w);

        if (w->invalidated)
                return;






        assert_se(mmap(w->ptr, w->size, w->prot, MAP_PRIVATE|MAP_ANONYMOUS|MAP_FIXED, -1, 0) == w->ptr);
        w->invalidated = 1;
}
