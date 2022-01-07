
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
struct dirent {scalar_t__ d_type; int d_name; } ;
typedef struct dirent DIR ;


 int AT_SYMLINK_NOFOLLOW ;
 scalar_t__ DT_BLK ;
 scalar_t__ DT_CHR ;
 scalar_t__ DT_DIR ;
 scalar_t__ DT_FIFO ;
 scalar_t__ DT_LNK ;
 scalar_t__ DT_REG ;
 scalar_t__ DT_SOCK ;
 scalar_t__ DT_UNKNOWN ;
 scalar_t__ S_ISBLK (int ) ;
 scalar_t__ S_ISCHR (int ) ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISFIFO (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 scalar_t__ S_ISREG (int ) ;
 scalar_t__ S_ISSOCK (int ) ;
 int assert (struct dirent*) ;
 int dirfd (struct dirent*) ;
 int errno ;
 scalar_t__ fstatat (int ,int ,struct stat*,int ) ;

int dirent_ensure_type(DIR *d, struct dirent *de) {
        struct stat st;

        assert(d);
        assert(de);

        if (de->d_type != DT_UNKNOWN)
                return 0;

        if (fstatat(dirfd(d), de->d_name, &st, AT_SYMLINK_NOFOLLOW) < 0)
                return -errno;

        de->d_type =
                S_ISREG(st.st_mode) ? DT_REG :
                S_ISDIR(st.st_mode) ? DT_DIR :
                S_ISLNK(st.st_mode) ? DT_LNK :
                S_ISFIFO(st.st_mode) ? DT_FIFO :
                S_ISSOCK(st.st_mode) ? DT_SOCK :
                S_ISCHR(st.st_mode) ? DT_CHR :
                S_ISBLK(st.st_mode) ? DT_BLK :
                                       DT_UNKNOWN;

        return 0;
}
