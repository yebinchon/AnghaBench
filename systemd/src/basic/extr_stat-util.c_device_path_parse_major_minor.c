
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;
typedef int dev_t ;


 int ENODEV ;
 int S_IFBLK ;
 int S_IFCHR ;
 int makedev (int ,int ) ;
 int parse_dev (char const*,int *) ;
 scalar_t__ path_equal (char const*,char*) ;
 char* path_startswith (char const*,char*) ;

int device_path_parse_major_minor(const char *path, mode_t *ret_mode, dev_t *ret_devno) {
        mode_t mode;
        dev_t devno;
        int r;





        if (path_equal(path, "/run/systemd/inaccessible/chr")) {
                mode = S_IFCHR;
                devno = makedev(0, 0);
        } else if (path_equal(path, "/run/systemd/inaccessible/blk")) {
                mode = S_IFBLK;
                devno = makedev(0, 0);
        } else {
                const char *w;

                w = path_startswith(path, "/dev/block/");
                if (w)
                        mode = S_IFBLK;
                else {
                        w = path_startswith(path, "/dev/char/");
                        if (!w)
                                return -ENODEV;

                        mode = S_IFCHR;
                }

                r = parse_dev(w, &devno);
                if (r < 0)
                        return r;
        }

        if (ret_mode)
                *ret_mode = mode;
        if (ret_devno)
                *ret_devno = devno;

        return 0;
}
