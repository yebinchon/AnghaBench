
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int fd; TYPE_1__* cache; scalar_t__ windows; } ;
struct TYPE_9__ {int fds; } ;
typedef TYPE_2__ MMapFileDescriptor ;
typedef TYPE_2__ MMapCache ;


 int FD_TO_PTR (int ) ;
 int assert (TYPE_2__*) ;
 int assert_se (int ) ;
 int free (TYPE_2__*) ;
 int hashmap_remove (int ,int ) ;
 int mmap_cache_process_sigbus (TYPE_2__*) ;
 int window_free (scalar_t__) ;

void mmap_cache_free_fd(MMapCache *m, MMapFileDescriptor *f) {
        assert(m);
        assert(f);





        mmap_cache_process_sigbus(m);

        while (f->windows)
                window_free(f->windows);

        if (f->cache)
                assert_se(hashmap_remove(f->cache->fds, FD_TO_PTR(f->fd)));

        free(f);
}
