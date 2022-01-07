
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct statvfs {scalar_t__ f_bsize; scalar_t__ f_bfree; } ;
struct TYPE_6__ {scalar_t__ max_size; scalar_t__ min_size; scalar_t__ keep_free; } ;
struct TYPE_7__ {scalar_t__ last_stat_usec; int header_size; struct TYPE_7__* header; int arena_size; int fd; TYPE_1__ metrics; int cache_fd; int mmap; } ;
typedef TYPE_2__ JournalFile ;


 int CLOCK_MONOTONIC ;
 scalar_t__ DIV_ROUND_UP (scalar_t__,scalar_t__) ;
 int E2BIG ;
 int EIO ;
 scalar_t__ FILE_SIZE_INCREASE ;
 scalar_t__ LAST_STAT_REFRESH_USEC ;
 scalar_t__ LESS_BY (scalar_t__,scalar_t__) ;
 scalar_t__ PAGE_ALIGN (scalar_t__) ;
 int assert (TYPE_2__*) ;
 scalar_t__ fstatvfs (int ,struct statvfs*) ;
 int htole64 (scalar_t__) ;
 int journal_file_fstat (TYPE_2__*) ;
 scalar_t__ le64toh (int ) ;
 scalar_t__ mmap_cache_got_sigbus (int ,int ) ;
 scalar_t__ now (int ) ;
 int posix_fallocate (int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static int journal_file_allocate(JournalFile *f, uint64_t offset, uint64_t size) {
        uint64_t old_size, new_size;
        int r;

        assert(f);
        assert(f->header);





        if (mmap_cache_got_sigbus(f->mmap, f->cache_fd))
                return -EIO;

        old_size =
                le64toh(f->header->header_size) +
                le64toh(f->header->arena_size);

        new_size = PAGE_ALIGN(offset + size);
        if (new_size < le64toh(f->header->header_size))
                new_size = le64toh(f->header->header_size);

        if (new_size <= old_size) {







                if (f->last_stat_usec + LAST_STAT_REFRESH_USEC > now(CLOCK_MONOTONIC))
                        return 0;

                return journal_file_fstat(f);
        }



        if (f->metrics.max_size > 0 && new_size > f->metrics.max_size)
                return -E2BIG;

        if (new_size > f->metrics.min_size && f->metrics.keep_free > 0) {
                struct statvfs svfs;

                if (fstatvfs(f->fd, &svfs) >= 0) {
                        uint64_t available;

                        available = LESS_BY((uint64_t) svfs.f_bfree * (uint64_t) svfs.f_bsize, f->metrics.keep_free);

                        if (new_size - old_size > available)
                                return -E2BIG;
                }
        }


        new_size = DIV_ROUND_UP(new_size, FILE_SIZE_INCREASE) * FILE_SIZE_INCREASE;
        if (f->metrics.max_size > 0 && new_size > f->metrics.max_size)
                new_size = f->metrics.max_size;




        r = posix_fallocate(f->fd, old_size, new_size - old_size);
        if (r != 0)
                return -r;

        f->header->arena_size = htole64(new_size - le64toh(f->header->header_size));

        return journal_file_fstat(f);
}
