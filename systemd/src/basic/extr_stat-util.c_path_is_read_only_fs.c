
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statvfs {int f_flag; } ;


 int EROFS ;
 int ST_RDONLY ;
 int W_OK ;
 scalar_t__ access (char const*,int ) ;
 int assert (char const*) ;
 int errno ;
 scalar_t__ statvfs (char const*,struct statvfs*) ;

int path_is_read_only_fs(const char *path) {
        struct statvfs st;

        assert(path);

        if (statvfs(path, &st) < 0)
                return -errno;

        if (st.f_flag & ST_RDONLY)
                return 1;




        if (access(path, W_OK) < 0 && errno == EROFS)
                return 1;

        return 0;
}
