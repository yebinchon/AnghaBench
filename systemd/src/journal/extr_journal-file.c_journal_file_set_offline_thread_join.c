
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ offline_state; int cache_fd; int mmap; int offline_thread; } ;
typedef TYPE_1__ JournalFile ;


 int EIO ;
 scalar_t__ OFFLINE_JOINED ;
 int assert (TYPE_1__*) ;
 scalar_t__ mmap_cache_got_sigbus (int ,int ) ;
 int pthread_join (int ,int *) ;

__attribute__((used)) static int journal_file_set_offline_thread_join(JournalFile *f) {
        int r;

        assert(f);

        if (f->offline_state == OFFLINE_JOINED)
                return 0;

        r = pthread_join(f->offline_thread, ((void*)0));
        if (r)
                return -r;

        f->offline_state = OFFLINE_JOINED;

        if (mmap_cache_got_sigbus(f->mmap, f->cache_fd))
                return -EIO;

        return 0;
}
