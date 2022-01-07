
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_dev; int st_mode; } ;


 int ENOENT ;
 int ENOTBLK ;
 int F_OK ;
 int SYS_BLOCK_PATH_MAX (char*) ;
 int S_ISBLK (int ) ;
 scalar_t__ access (char*,int ) ;
 int assert (char const*) ;
 int errno ;
 scalar_t__ stat (char const*,struct stat*) ;
 int xsprintf_sys_block_path (char*,char*,int ) ;

__attribute__((used)) static int is_loop_device(const char *path) {
        char s[SYS_BLOCK_PATH_MAX("/../loop/")];
        struct stat st;

        assert(path);

        if (stat(path, &st) < 0)
                return -errno;

        if (!S_ISBLK(st.st_mode))
                return -ENOTBLK;

        xsprintf_sys_block_path(s, "/loop/", st.st_dev);
        if (access(s, F_OK) < 0) {
                if (errno != ENOENT)
                        return -errno;


                xsprintf_sys_block_path(s, "/../loop/", st.st_dev);
                if (access(s, F_OK) < 0)
                        return errno == ENOENT ? 0 : -errno;
        }

        return 1;
}
