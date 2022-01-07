
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_device ;


 scalar_t__ sd_device_get_sysattr_value (int *,char*,char const**) ;
 int streq (char const*,char*) ;

__attribute__((used)) static bool is_pci_ari_enabled(sd_device *dev) {
        const char *a;

        if (sd_device_get_sysattr_value(dev, "ari_enabled", &a) < 0)
                return 0;

        return streq(a, "1");
}
