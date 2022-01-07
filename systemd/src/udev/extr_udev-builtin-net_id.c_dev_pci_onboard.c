
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netnames {char* pci_onboard; char const* pci_onboard_label; int * pcidev; } ;
typedef int sd_device ;


 int EINVAL ;
 int ENOENT ;
 int NAMING_ZERO_ACPI_INDEX ;
 unsigned long ONBOARD_INDEX_MAX ;
 int naming_scheme_has (int ) ;
 int safe_atolu (char const*,unsigned long*) ;
 int sd_device_get_sysattr_value (int *,char*,char const**) ;
 size_t strpcpyf (char**,size_t,char*,...) ;
 unsigned long strtoul (char const*,int *,int) ;

__attribute__((used)) static int dev_pci_onboard(sd_device *dev, struct netnames *names) {
        unsigned long idx, dev_port = 0;
        const char *attr, *port_name = ((void*)0);
        size_t l;
        char *s;
        int r;


        if (sd_device_get_sysattr_value(names->pcidev, "acpi_index", &attr) < 0) {

                r = sd_device_get_sysattr_value(names->pcidev, "index", &attr);
                if (r < 0)
                        return r;
        }

        r = safe_atolu(attr, &idx);
        if (r < 0)
                return r;
        if (idx == 0 && !naming_scheme_has(NAMING_ZERO_ACPI_INDEX))
                return -EINVAL;






        if (idx > ONBOARD_INDEX_MAX)
                return -ENOENT;


        if (sd_device_get_sysattr_value(dev, "dev_port", &attr) >= 0)
                dev_port = strtoul(attr, ((void*)0), 10);


        (void) sd_device_get_sysattr_value(dev, "phys_port_name", &port_name);

        s = names->pci_onboard;
        l = sizeof(names->pci_onboard);
        l = strpcpyf(&s, l, "o%lu", idx);
        if (port_name)
                l = strpcpyf(&s, l, "n%s", port_name);
        else if (dev_port > 0)
                l = strpcpyf(&s, l, "d%lu", dev_port);
        if (l == 0)
                names->pci_onboard[0] = '\0';

        if (sd_device_get_sysattr_value(names->pcidev, "label", &names->pci_onboard_label) < 0)
                names->pci_onboard_label = ((void*)0);

        return 0;
}
