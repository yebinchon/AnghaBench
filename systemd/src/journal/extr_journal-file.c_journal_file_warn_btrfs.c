
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int path; int fd; } ;
typedef TYPE_1__ JournalFile ;


 unsigned int FS_NOCOW_FL ;
 int assert (TYPE_1__*) ;
 int btrfs_is_filesystem (int ) ;
 int log_debug (char*) ;
 int log_notice (char*,int ) ;
 int log_warning_errno (int,char*) ;
 int read_attr_fd (int ,unsigned int*) ;

__attribute__((used)) static int journal_file_warn_btrfs(JournalFile *f) {
        unsigned attrs;
        int r;

        assert(f);
        r = btrfs_is_filesystem(f->fd);
        if (r < 0)
                return log_warning_errno(r, "Failed to determine if journal is on btrfs: %m");
        if (!r)
                return 0;

        r = read_attr_fd(f->fd, &attrs);
        if (r < 0)
                return log_warning_errno(r, "Failed to read file attributes: %m");

        if (attrs & FS_NOCOW_FL) {
                log_debug("Detected btrfs file system with copy-on-write disabled, all is good.");
                return 0;
        }

        log_notice("Creating journal file %s on a btrfs file system, and copy-on-write is enabled. "
                   "This is likely to slow down journal access substantially, please consider turning "
                   "off the copy-on-write file attribute on the journal directory, using chattr +C.", f->path);

        return 1;
}
