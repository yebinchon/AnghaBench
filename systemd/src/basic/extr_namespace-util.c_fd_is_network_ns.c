
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statfs {scalar_t__ f_type; } ;


 int CLONE_NEWNET ;
 int ENOTTY ;
 int EUCLEAN ;
 int NSFS_MAGIC ;
 int NS_GET_NSTYPE ;
 int PROC_SUPER_MAGIC ;
 int errno ;
 scalar_t__ fstatfs (int,struct statfs*) ;
 int ioctl (int,int ) ;
 scalar_t__ is_fs_type (struct statfs*,int ) ;
 scalar_t__ statfs (char*,struct statfs*) ;

int fd_is_network_ns(int fd) {
        struct statfs s;
        int r;
        if (fstatfs(fd, &s) < 0)
                return -errno;

        if (!is_fs_type(&s, NSFS_MAGIC)) {



                if (is_fs_type(&s, PROC_SUPER_MAGIC)) {
                        struct statfs t;





                        if (statfs("/proc/self/ns/net", &t) < 0)
                                return -errno;

                        if (s.f_type == t.f_type)
                                return -EUCLEAN;
                }

                return 0;
        }

        r = ioctl(fd, NS_GET_NSTYPE);
        if (r < 0) {
                if (errno == ENOTTY)
                        return -EUCLEAN;

                return -errno;
        }

        return r == CLONE_NEWNET;
}
