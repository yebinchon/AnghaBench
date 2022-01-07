
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mode; int where; int type; int options; int flags; int what; int (* condition_fn ) () ;} ;
typedef TYPE_1__ MountPoint ;


 int AT_SYMLINK_FOLLOW ;
 int ENOENT ;
 int LABEL_IGNORE_ENOENT ;
 int LABEL_IGNORE_EROFS ;
 int LOG_DEBUG ;
 int LOG_ERR ;
 int MNT_CHECK_WRITABLE ;
 int MNT_FATAL ;
 int MNT_IN_CONTAINER ;
 int W_OK ;
 scalar_t__ access (int ,int ) ;
 int assert (TYPE_1__ const*) ;
 scalar_t__ detect_container () ;
 int errno ;
 int label_fix (int ,int) ;
 int log_debug (char*,int ,int ,int ,int ) ;
 int log_full_errno (int,int,char*,int ,...) ;
 int mkdir_p (int ,int) ;
 int mkdir_p_label (int ,int) ;
 scalar_t__ mount (int ,int ,int ,int ,int ) ;
 int path_is_mount_point (int ,int *,int ) ;
 int rmdir (int ) ;
 int strna (int ) ;
 int stub1 () ;
 int umount (int ) ;

__attribute__((used)) static int mount_one(const MountPoint *p, bool relabel) {
        int r, priority;

        assert(p);

        priority = (p->mode & MNT_FATAL) ? LOG_ERR : LOG_DEBUG;

        if (p->condition_fn && !p->condition_fn())
                return 0;


        if (relabel)
                (void) label_fix(p->where, LABEL_IGNORE_ENOENT|LABEL_IGNORE_EROFS);

        r = path_is_mount_point(p->where, ((void*)0), AT_SYMLINK_FOLLOW);
        if (r < 0 && r != -ENOENT) {
                log_full_errno(priority, r, "Failed to determine whether %s is a mount point: %m", p->where);
                return (p->mode & MNT_FATAL) ? r : 0;
        }
        if (r > 0)
                return 0;


        if (!(p->mode & MNT_IN_CONTAINER) && detect_container() > 0)
                return 0;



        if (relabel)
                (void) mkdir_p_label(p->where, 0755);
        else
                (void) mkdir_p(p->where, 0755);

        log_debug("Mounting %s to %s of type %s with options %s.",
                  p->what,
                  p->where,
                  p->type,
                  strna(p->options));

        if (mount(p->what,
                  p->where,
                  p->type,
                  p->flags,
                  p->options) < 0) {
                log_full_errno(priority, errno, "Failed to mount %s at %s: %m", p->type, p->where);
                return (p->mode & MNT_FATAL) ? -errno : 0;
        }


        if (relabel)
                (void) label_fix(p->where, 0);

        if (p->mode & MNT_CHECK_WRITABLE) {
                if (access(p->where, W_OK) < 0) {
                        r = -errno;

                        (void) umount(p->where);
                        (void) rmdir(p->where);

                        log_full_errno(priority, r, "Mount point %s not writable after mounting: %m", p->where);
                        return (p->mode & MNT_FATAL) ? r : 0;
                }
        }

        return 1;
}
