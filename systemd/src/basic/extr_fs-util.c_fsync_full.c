
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 scalar_t__ fsync (int) ;
 int fsync_directory_of_file (int) ;

int fsync_full(int fd) {
        int r, q;



        r = fsync(fd) < 0 ? -errno : 0;
        q = fsync_directory_of_file(fd);

        return r < 0 ? r : q;
}
