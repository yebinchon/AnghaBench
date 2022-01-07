
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_device ;
typedef int dev_t ;


 int DEV_NUM_PATH_MAX ;
 int ENOMEM ;
 int assert (char**) ;
 int sd_device_get_devnum (int *,int *) ;
 int sd_device_get_subsystem (int *,char const**) ;
 char* strdup (char*) ;
 scalar_t__ streq (char const*,char*) ;
 int xsprintf_dev_num_path (char*,char*,int ) ;

__attribute__((used)) static int xsprintf_dev_num_path_from_sd_device(sd_device *dev, char **ret) {
        char filename[DEV_NUM_PATH_MAX], *s;
        const char *subsystem;
        dev_t devnum;
        int r;

        assert(ret);

        r = sd_device_get_subsystem(dev, &subsystem);
        if (r < 0)
                return r;

        r = sd_device_get_devnum(dev, &devnum);
        if (r < 0)
                return r;

        xsprintf_dev_num_path(filename,
                              streq(subsystem, "block") ? "block" : "char",
                              devnum);

        s = strdup(filename);
        if (!s)
                return -ENOMEM;

        *ret = s;
        return 0;
}
