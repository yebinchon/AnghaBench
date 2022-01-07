
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flock {int l_len; int l_start; int l_whence; int l_type; } ;


 char* ETC_PASSWD_LOCK_PATH ;
 int F_SETLKW ;
 int F_WRLCK ;
 int O_CLOEXEC ;
 int O_CREAT ;
 int O_NOCTTY ;
 int O_NOFOLLOW ;
 int O_WRONLY ;
 int SEEK_SET ;
 int errno ;
 int fcntl (int,int ,struct flock*) ;
 int log_debug_errno (int ,char*,char const*) ;
 int open (char const*,int,int) ;
 char* prefix_roota (char const*,char*) ;
 int safe_close (int) ;

int take_etc_passwd_lock(const char *root) {

        struct flock flock = {
                .l_type = F_WRLCK,
                .l_whence = SEEK_SET,
                .l_start = 0,
                .l_len = 0,
        };

        const char *path;
        int fd, r;
        if (root)
                path = prefix_roota(root, ETC_PASSWD_LOCK_PATH);
        else
                path = ETC_PASSWD_LOCK_PATH;

        fd = open(path, O_WRONLY|O_CREAT|O_CLOEXEC|O_NOCTTY|O_NOFOLLOW, 0600);
        if (fd < 0)
                return log_debug_errno(errno, "Cannot open %s: %m", path);

        r = fcntl(fd, F_SETLKW, &flock);
        if (r < 0) {
                safe_close(fd);
                return log_debug_errno(errno, "Locking %s failed: %m", path);
        }

        return fd;
}
