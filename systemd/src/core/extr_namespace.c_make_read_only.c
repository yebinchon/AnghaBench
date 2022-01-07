
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ mode; scalar_t__ ignore; int flags; scalar_t__ nosuid; } ;
typedef TYPE_1__ MountEntry ;
typedef TYPE_1__ const FILE ;


 int EMPTY_DIR ;
 int ENOENT ;
 int IN_SET (scalar_t__,int ,int ) ;
 unsigned long MS_NOSUID ;
 unsigned long MS_RDONLY ;
 scalar_t__ PRIVATE_DEV ;
 int TMPFS ;
 int assert (TYPE_1__ const*) ;
 int bind_remount_one (int ,int ,unsigned long,unsigned long) ;
 int bind_remount_recursive_with_mountinfo (int ,unsigned long,unsigned long,char**,TYPE_1__ const*) ;
 int log_debug_errno (int,char*,int ,char*) ;
 int mount_entry_path (TYPE_1__ const*) ;
 scalar_t__ mount_entry_read_only (TYPE_1__ const*) ;

__attribute__((used)) static int make_read_only(const MountEntry *m, char **blacklist, FILE *proc_self_mountinfo) {
        unsigned long new_flags = 0, flags_mask = 0;
        bool submounts = 0;
        int r = 0;

        assert(m);
        assert(proc_self_mountinfo);

        if (mount_entry_read_only(m) || m->mode == PRIVATE_DEV) {
                new_flags |= MS_RDONLY;
                flags_mask |= MS_RDONLY;
        }

        if (m->nosuid) {
                new_flags |= MS_NOSUID;
                flags_mask |= MS_NOSUID;
        }

        if (flags_mask == 0)
                return 0;





        submounts =
                mount_entry_read_only(m) &&
                !IN_SET(m->mode, EMPTY_DIR, TMPFS);
        if (submounts)
                r = bind_remount_recursive_with_mountinfo(mount_entry_path(m), new_flags, flags_mask, blacklist, proc_self_mountinfo);
        else
                r = bind_remount_one(mount_entry_path(m), m->flags, new_flags, flags_mask);





        if (r == -ENOENT && m->ignore)
                return 0;
        if (r < 0)
                return log_debug_errno(r, "Failed to re-mount '%s'%s: %m", mount_entry_path(m),
                                       submounts ? " and its submounts" : "");
        return 0;
}
