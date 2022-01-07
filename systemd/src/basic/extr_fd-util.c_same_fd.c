
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; scalar_t__ st_dev; scalar_t__ st_ino; } ;
typedef int pid_t ;


 int EACCES ;
 int ENOSYS ;
 int EPERM ;
 int F_GETFL ;
 int IN_SET (int,int ,int ,int ) ;
 int KCMP_FILE ;
 int S_IFMT ;
 scalar_t__ S_ISBLK (int) ;
 scalar_t__ S_ISCHR (int) ;
 int assert (int) ;
 int errno ;
 int fcntl (int,int ) ;
 scalar_t__ fstat (int,struct stat*) ;
 int getpid_cached () ;
 int kcmp (int ,int ,int ,int,int) ;

int same_fd(int a, int b) {
        struct stat sta, stb;
        pid_t pid;
        int r, fa, fb;

        assert(a >= 0);
        assert(b >= 0);
        if (a == b)
                return 1;


        pid = getpid_cached();
        r = kcmp(pid, pid, KCMP_FILE, a, b);
        if (r == 0)
                return 1;
        if (r > 0)
                return 0;
        if (!IN_SET(errno, ENOSYS, EACCES, EPERM))
                return -errno;


        if (fstat(a, &sta) < 0)
                return -errno;

        if (fstat(b, &stb) < 0)
                return -errno;

        if ((sta.st_mode & S_IFMT) != (stb.st_mode & S_IFMT))
                return 0;





        if (S_ISCHR(sta.st_mode) || S_ISBLK(sta.st_mode))
                return 0;

        if (sta.st_dev != stb.st_dev || sta.st_ino != stb.st_ino)
                return 0;





        fa = fcntl(a, F_GETFL);
        if (fa < 0)
                return -errno;

        fb = fcntl(b, F_GETFL);
        if (fb < 0)
                return -errno;

        return fa == fb;
}
