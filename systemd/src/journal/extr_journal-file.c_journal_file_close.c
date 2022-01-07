
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ fd; scalar_t__ hmac; int fsprg_seed; int fsprg_state; int fss_file_size; scalar_t__ fss_file; int compress_buffer; int chain_cache; scalar_t__ mmap; int path; scalar_t__ close_fd; scalar_t__ defrag_on_close; scalar_t__ cache_fd; scalar_t__ post_change_timer; scalar_t__ writable; scalar_t__ seal; } ;
typedef TYPE_1__ JournalFile ;


 int FS_NOCOW_FL ;
 int PAGE_ALIGN (int ) ;
 int btrfs_defrag_fd (scalar_t__) ;
 int chattr_fd (scalar_t__,int ,int ,int *) ;
 int free (int ) ;
 int gcry_md_close (scalar_t__) ;
 int journal_file_append_tag (TYPE_1__*) ;
 int journal_file_post_change (TYPE_1__*) ;
 int journal_file_set_offline (TYPE_1__*,int) ;
 int log_error_errno (int,char*) ;
 TYPE_1__* mfree (TYPE_1__*) ;
 int mmap_cache_free_fd (scalar_t__,scalar_t__) ;
 int mmap_cache_unref (scalar_t__) ;
 int munmap (scalar_t__,int ) ;
 int ordered_hashmap_free_free (int ) ;
 int safe_close (scalar_t__) ;
 int sd_event_source_disable_unref (scalar_t__) ;
 scalar_t__ sd_event_source_get_enabled (scalar_t__,int *) ;

JournalFile* journal_file_close(JournalFile *f) {
        if (!f)
                return ((void*)0);
        if (f->post_change_timer) {
                if (sd_event_source_get_enabled(f->post_change_timer, ((void*)0)) > 0)
                        journal_file_post_change(f);

                sd_event_source_disable_unref(f->post_change_timer);
        }

        journal_file_set_offline(f, 1);

        if (f->mmap && f->cache_fd)
                mmap_cache_free_fd(f->mmap, f->cache_fd);

        if (f->fd >= 0 && f->defrag_on_close) {







                (void) chattr_fd(f->fd, 0, FS_NOCOW_FL, ((void*)0));
                (void) btrfs_defrag_fd(f->fd);
        }

        if (f->close_fd)
                safe_close(f->fd);
        free(f->path);

        mmap_cache_unref(f->mmap);

        ordered_hashmap_free_free(f->chain_cache);
        return mfree(f);
}
