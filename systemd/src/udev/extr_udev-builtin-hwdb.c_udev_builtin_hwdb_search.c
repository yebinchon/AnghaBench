
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_device ;
typedef int s ;


 int assert (int *) ;
 char* modalias_usb (int *,char*,int) ;
 scalar_t__ sd_device_get_devtype (int *,char const**) ;
 scalar_t__ sd_device_get_parent (int *,int **) ;
 int sd_device_get_property_value (int *,char*,char const**) ;
 scalar_t__ sd_device_get_subsystem (int *,char const**) ;
 scalar_t__ streq (char const*,char const*) ;
 int udev_builtin_hwdb_lookup (int *,char const*,char const*,char const*,int) ;

__attribute__((used)) static int udev_builtin_hwdb_search(sd_device *dev, sd_device *srcdev,
                                    const char *subsystem, const char *prefix,
                                    const char *filter, bool test) {
        sd_device *d;
        char s[16];
        bool last = 0;
        int r = 0;

        assert(dev);

        if (!srcdev)
                srcdev = dev;

        for (d = srcdev; d; ) {
                const char *dsubsys, *devtype, *modalias = ((void*)0);

                if (sd_device_get_subsystem(d, &dsubsys) < 0)
                        goto next;


                if (subsystem && !streq(dsubsys, subsystem))
                        goto next;

                (void) sd_device_get_property_value(d, "MODALIAS", &modalias);

                if (streq(dsubsys, "usb") &&
                    sd_device_get_devtype(d, &devtype) >= 0 &&
                    streq(devtype, "usb_device")) {

                        if (!modalias)
                                modalias = modalias_usb(d, s, sizeof(s));


                        last = 1;
                }

                if (!modalias)
                        goto next;

                r = udev_builtin_hwdb_lookup(dev, prefix, modalias, filter, test);
                if (r > 0)
                        break;

                if (last)
                        break;
next:
                if (sd_device_get_parent(d, &d) < 0)
                        break;
        }

        return r;
}
