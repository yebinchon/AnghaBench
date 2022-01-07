
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ unused; int fds; scalar_t__* contexts; } ;
typedef TYPE_1__ MMapCache ;


 int MMAP_CACHE_MAX_CONTEXTS ;
 int assert (TYPE_1__*) ;
 int context_free (scalar_t__) ;
 int hashmap_free (int ) ;
 TYPE_1__* mfree (TYPE_1__*) ;
 int window_free (scalar_t__) ;

__attribute__((used)) static MMapCache *mmap_cache_free(MMapCache *m) {
        int i;

        assert(m);

        for (i = 0; i < MMAP_CACHE_MAX_CONTEXTS; i++)
                if (m->contexts[i])
                        context_free(m->contexts[i]);

        hashmap_free(m->fds);

        while (m->unused)
                window_free(m->unused);

        return mfree(m);
}
