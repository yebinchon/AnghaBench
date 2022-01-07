
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EIO ;
 int ENOMEM ;
 int TIOCGPTN ;
 scalar_t__ asprintf (char**,char*,int) ;
 int errno ;
 int ioctl (int,int ,int*) ;

__attribute__((used)) static int ptsname_namespace(int pty, char **ret) {
        int no = -1, r;




        r = ioctl(pty, TIOCGPTN, &no);
        if (r < 0)
                return -errno;

        if (no < 0)
                return -EIO;

        if (asprintf(ret, "/dev/pts/%i", no) < 0)
                return -ENOMEM;

        return 0;
}
