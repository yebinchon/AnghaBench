
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int active; int n_allocated; int ptr; } ;
typedef TYPE_1__ CacheMem ;


 int ENOMEM ;
 int GREEDY_REALLOC (int ,int ,unsigned int) ;
 int assert (TYPE_1__*) ;

__attribute__((used)) static int cachemem_maintain(CacheMem *mem, unsigned size) {
        assert(mem);

        if (!GREEDY_REALLOC(mem->ptr, mem->n_allocated, size)) {
                if (size > 0)
                        return -ENOMEM;
        }

        if (!mem->active) {
                mem->active = 1;
                return 1;
        }

        return 0;
}
