
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fstype; int node; } ;
typedef TYPE_1__ DissectedPartition ;


 int USEC_PER_SEC ;
 int add_automount (char*,int ,char*,int ,int,char*,char*,int) ;
 int assert (TYPE_1__*) ;
 int fstab_is_mount_point (char*) ;
 scalar_t__ in_initrd () ;
 int log_debug (char*) ;
 int log_error_errno (int,char*) ;
 int path_is_busy (char*) ;

__attribute__((used)) static int add_xbootldr(DissectedPartition *p) {
        int r;

        assert(p);

        if (in_initrd()) {
                log_debug("In initrd, ignoring the XBOOTLDR partition.");
                return 0;
        }

        r = fstab_is_mount_point("/boot");
        if (r < 0)
                return log_error_errno(r, "Failed to parse fstab: %m");
        if (r > 0) {
                log_debug("/boot specified in fstab, ignoring XBOOTLDR partition.");
                return 0;
        }

        r = path_is_busy("/boot");
        if (r < 0)
                return r;
        if (r > 0)
                return 0;

        return add_automount("boot",
                             p->node,
                             "/boot",
                             p->fstype,
                             1,
                             "umask=0077",
                             "Boot Loader Partition",
                             120 * USEC_PER_SEC);
}
