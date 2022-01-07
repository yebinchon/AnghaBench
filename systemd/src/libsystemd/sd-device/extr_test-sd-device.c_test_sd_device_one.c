
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ usec_t ;
typedef int sd_device ;
typedef int dev_t ;


 int EINVAL ;
 int ENODATA ;
 int ENOENT ;
 scalar_t__ IN_SET (int,int,int ) ;
 int assert_se (int) ;
 int log_info (char*,char const*,int ,int ) ;
 scalar_t__ major (int ) ;
 int sd_device_get_devname (int *,char const**) ;
 int sd_device_get_devnum (int *,int *) ;
 scalar_t__ sd_device_get_devpath (int *,char const**) ;
 int sd_device_get_devtype (int *,char const**) ;
 int sd_device_get_driver (int *,char const**) ;
 int sd_device_get_ifindex (int *,int*) ;
 int sd_device_get_is_initialized (int *) ;
 int sd_device_get_property_value (int *,char*,char const**) ;
 int sd_device_get_subsystem (int *,char const**) ;
 int sd_device_get_sysattr_value (int *,char*,char const**) ;
 scalar_t__ sd_device_get_sysname (int *,char const**) ;
 int sd_device_get_sysnum (int *,char const**) ;
 scalar_t__ sd_device_get_syspath (int *,char const**) ;
 int sd_device_get_usec_since_initialized (int *,scalar_t__*) ;
 int strna (char const*) ;
 int yes_no (int) ;

__attribute__((used)) static void test_sd_device_one(sd_device *d) {
        const char *syspath, *subsystem, *val;
        dev_t devnum;
        usec_t usec;
        int i, r;

        assert_se(sd_device_get_syspath(d, &syspath) >= 0);

        r = sd_device_get_subsystem(d, &subsystem);
        assert_se(r >= 0 || r == -ENOENT);

        r = sd_device_get_devtype(d, &val);
        assert_se(r >= 0 || r == -ENOENT);

        r = sd_device_get_devnum(d, &devnum);
        assert_se((r >= 0 && major(devnum) > 0) || r == -ENOENT);

        r = sd_device_get_ifindex(d, &i);
        assert_se((r >= 0 && i > 0) || r == -ENOENT);

        r = sd_device_get_driver(d, &val);
        assert_se(r >= 0 || r == -ENOENT);

        assert_se(sd_device_get_devpath(d, &val) >= 0);

        r = sd_device_get_devname(d, &val);
        assert_se(r >= 0 || r == -ENOENT);

        assert_se(sd_device_get_sysname(d, &val) >= 0);

        r = sd_device_get_sysnum(d, &val);
        assert_se(r >= 0 || r == -ENOENT);

        i = sd_device_get_is_initialized(d);
        assert_se(i >= 0);
        if (i > 0) {
                r = sd_device_get_usec_since_initialized(d, &usec);
                assert_se((r >= 0 && usec > 0) || r == -ENODATA);
        }

        r = sd_device_get_sysattr_value(d, "name_assign_type", &val);
        assert_se(r >= 0 || IN_SET(r, -ENOENT, -EINVAL));

        r = sd_device_get_property_value(d, "ID_NET_DRIVER", &val);
        assert_se(r >= 0 || r == -ENOENT);

        log_info("syspath:%s subsystem:%s initialized:%s", syspath, strna(subsystem), yes_no(i));
}
