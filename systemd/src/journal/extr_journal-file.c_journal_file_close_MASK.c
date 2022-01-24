#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ fd; scalar_t__ hmac; int /*<<< orphan*/  fsprg_seed; int /*<<< orphan*/  fsprg_state; int /*<<< orphan*/  fss_file_size; scalar_t__ fss_file; int /*<<< orphan*/  compress_buffer; int /*<<< orphan*/  chain_cache; scalar_t__ mmap; int /*<<< orphan*/  path; scalar_t__ close_fd; scalar_t__ defrag_on_close; scalar_t__ cache_fd; scalar_t__ post_change_timer; scalar_t__ writable; scalar_t__ seal; } ;
typedef  TYPE_1__ JournalFile ;

/* Variables and functions */
 int /*<<< orphan*/  FS_NOCOW_FL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC8 (int,char*) ; 
 TYPE_1__* FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 scalar_t__ FUNC16 (scalar_t__,int /*<<< orphan*/ *) ; 

JournalFile* FUNC17(JournalFile *f) {
        if (!f)
                return NULL;

#if HAVE_GCRYPT
        /* Write the final tag */
        if (f->seal && f->writable) {
                int r;

                r = journal_file_append_tag(f);
                if (r < 0)
                        log_error_errno(r, "Failed to append tag when closing journal: %m");
        }
#endif

        if (f->post_change_timer) {
                if (FUNC16(f->post_change_timer, NULL) > 0)
                        FUNC6(f);

                FUNC15(f->post_change_timer);
        }

        FUNC7(f, true);

        if (f->mmap && f->cache_fd)
                FUNC10(f->mmap, f->cache_fd);

        if (f->fd >= 0 && f->defrag_on_close) {

                /* Be friendly to btrfs: turn COW back on again now,
                 * and defragment the file. We won't write to the file
                 * ever again, hence remove all fragmentation, and
                 * reenable all the good bits COW usually provides
                 * (such as data checksumming). */

                (void) FUNC2(f->fd, 0, FS_NOCOW_FL, NULL);
                (void) FUNC1(f->fd);
        }

        if (f->close_fd)
                FUNC14(f->fd);
        FUNC3(f->path);

        FUNC11(f->mmap);

        FUNC13(f->chain_cache);

#if HAVE_XZ || HAVE_LZ4
        free(f->compress_buffer);
#endif

#if HAVE_GCRYPT
        if (f->fss_file)
                munmap(f->fss_file, PAGE_ALIGN(f->fss_file_size));
        else
                free(f->fsprg_state);

        free(f->fsprg_seed);

        if (f->hmac)
                gcry_md_close(f->hmac);
#endif

        return FUNC9(f);
}