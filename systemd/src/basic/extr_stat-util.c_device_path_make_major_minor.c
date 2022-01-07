
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;
typedef int dev_t ;


 int ENODEV ;
 int ENOMEM ;
 scalar_t__ S_ISBLK (int ) ;
 scalar_t__ S_ISCHR (int ) ;
 scalar_t__ asprintf (char**,char*,char const*,int ,int ) ;
 int major (int ) ;
 int minor (int ) ;

int device_path_make_major_minor(mode_t mode, dev_t devno, char **ret) {
        const char *t;



        if (S_ISCHR(mode))
                t = "char";
        else if (S_ISBLK(mode))
                t = "block";
        else
                return -ENODEV;

        if (asprintf(ret, "/dev/%s/%u:%u", t, major(devno), minor(devno)) < 0)
                return -ENOMEM;

        return 0;
}
