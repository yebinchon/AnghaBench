
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_device ;


 int ENOENT ;
 int path_prepend (char**,char*,unsigned long,...) ;
 int sd_device_get_sysnum (int *,char const**) ;
 unsigned long strtoul (char const*,int *,int) ;

__attribute__((used)) static int format_lun_number(sd_device *dev, char **path) {
        const char *sysnum;
        unsigned long lun;
        int r;

        r = sd_device_get_sysnum(dev, &sysnum);
        if (r < 0)
                return r;
        if (!sysnum)
                return -ENOENT;

        lun = strtoul(sysnum, ((void*)0), 10);
        if (lun < 256)

                path_prepend(path, "lun-%lu", lun);
        else

                path_prepend(path, "lun-0x%04lx%04lx00000000", lun & 0xffff, (lun >> 16) & 0xffff);

        return 0;
}
