
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int O_EXCL ;
 int O_TMPFILE ;
 int S_IRUSR ;
 int S_IWUSR ;
 scalar_t__ isempty (char const*) ;
 int mkostemp_safe (char*) ;
 int open (char const*,int,int) ;
 char* strjoina (char const*,char*) ;
 int tmp_dir (char const**) ;
 int unlink (char*) ;

int open_tmpfile_unlinkable(const char *directory, int flags) {
        char *p;
        int fd, r;

        if (!directory) {
                r = tmp_dir(&directory);
                if (r < 0)
                        return r;
        } else if (isempty(directory))
                return -EINVAL;




        fd = open(directory, flags|O_TMPFILE|O_EXCL, S_IRUSR|S_IWUSR);
        if (fd >= 0)
                return fd;


        p = strjoina(directory, "/systemd-tmp-XXXXXX");

        fd = mkostemp_safe(p);
        if (fd < 0)
                return fd;

        (void) unlink(p);

        return fd;
}
