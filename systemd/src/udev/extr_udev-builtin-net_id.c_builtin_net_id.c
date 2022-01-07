
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netnames {scalar_t__ type; char* pci_path; char* pci_slot; int bcma_core; int usb_ports; scalar_t__ pci_onboard_label; scalar_t__* pci_onboard; int netdevsim_path; int platform_path; int vio_slot; int ccw_busid; int * mac; scalar_t__ mac_valid; } ;
typedef int sd_device ;
struct TYPE_2__ {char* name; } ;





 int IFNAMSIZ ;
 int NAMING_INFINIBAND ;
 int NAMING_LABEL_NOPREFIX ;
 scalar_t__ NET_BCMA ;
 scalar_t__ NET_CCW ;
 scalar_t__ NET_NETDEVSIM ;
 scalar_t__ NET_PCI ;
 scalar_t__ NET_PLATFORM ;
 scalar_t__ NET_USB ;
 scalar_t__ NET_VIO ;
 int ieee_oui (int *,struct netnames*,int) ;
 scalar_t__ names_bcma (int *,struct netnames*) ;
 scalar_t__ names_ccw (int *,struct netnames*) ;
 int names_mac (int *,struct netnames*) ;
 scalar_t__ names_netdevsim (int *,struct netnames*) ;
 scalar_t__ names_pci (int *,struct netnames*) ;
 scalar_t__ names_platform (int *,struct netnames*,int) ;
 scalar_t__ names_usb (int *,struct netnames*) ;
 scalar_t__ names_vio (int *,struct netnames*) ;
 TYPE_1__* naming_scheme () ;
 scalar_t__ naming_scheme_has (int ) ;
 scalar_t__ sd_device_get_devtype (int *,char const**) ;
 int sd_device_get_sysattr_value (int *,char*,char const**) ;
 scalar_t__ snprintf (char*,int,char*,char const*,char*,int ) ;
 scalar_t__ snprintf_ok (char*,int,char*,char const*,char*,...) ;
 scalar_t__ streq (char const*,char const*) ;
 unsigned long strtoul (char const*,int *,int ) ;
 int udev_builtin_add_property (int *,int,char*,char*) ;
 int xsprintf (char*,char*,char const*,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int builtin_net_id(sd_device *dev, int argc, char *argv[], bool test) {
        const char *s, *p, *devtype, *prefix = "en";
        struct netnames names = {};
        unsigned long i;
        int r;


        r = sd_device_get_sysattr_value(dev, "type", &s);
        if (r < 0)
                return r;

        i = strtoul(s, ((void*)0), 0);
        switch (i) {
        case 130:
                prefix = "en";
                break;
        case 129:
                if (naming_scheme_has(NAMING_INFINIBAND))
                        prefix = "ib";
                else
                        return 0;
                break;
        case 128:
                prefix = "sl";
                break;
        default:
                return 0;
        }


        r = sd_device_get_sysattr_value(dev, "ifindex", &s);
        if (r < 0)
                return r;
        r = sd_device_get_sysattr_value(dev, "iflink", &p);
        if (r < 0)
                return r;
        if (!streq(s, p))
                return 0;

        if (sd_device_get_devtype(dev, &devtype) >= 0) {
                if (streq("wlan", devtype))
                        prefix = "wl";
                else if (streq("wwan", devtype))
                        prefix = "ww";
        }

        udev_builtin_add_property(dev, test, "ID_NET_NAMING_SCHEME", naming_scheme()->name);

        r = names_mac(dev, &names);
        if (r >= 0 && names.mac_valid) {
                char str[IFNAMSIZ];

                xsprintf(str, "%sx%02x%02x%02x%02x%02x%02x", prefix,
                         names.mac[0], names.mac[1], names.mac[2],
                         names.mac[3], names.mac[4], names.mac[5]);
                udev_builtin_add_property(dev, test, "ID_NET_NAME_MAC", str);

                ieee_oui(dev, &names, test);
        }


        if (names_ccw(dev, &names) >= 0 && names.type == NET_CCW) {
                char str[IFNAMSIZ];

                if (snprintf_ok(str, sizeof str, "%s%s", prefix, names.ccw_busid))
                        udev_builtin_add_property(dev, test, "ID_NET_NAME_PATH", str);
                return 0;
        }


        if (names_vio(dev, &names) >= 0 && names.type == NET_VIO) {
                char str[IFNAMSIZ];

                if (snprintf_ok(str, sizeof str, "%s%s", prefix, names.vio_slot))
                        udev_builtin_add_property(dev, test, "ID_NET_NAME_SLOT", str);
                return 0;
        }


        if (names_platform(dev, &names, test) >= 0 && names.type == NET_PLATFORM) {
                char str[IFNAMSIZ];

                if (snprintf_ok(str, sizeof str, "%s%s", prefix, names.platform_path))
                        udev_builtin_add_property(dev, test, "ID_NET_NAME_PATH", str);
                return 0;
        }


        if (names_netdevsim(dev, &names) >= 0 && names.type == NET_NETDEVSIM) {
                char str[IFNAMSIZ];

                if (snprintf_ok(str, sizeof str, "%s%s", prefix, names.netdevsim_path))
                        udev_builtin_add_property(dev, test, "ID_NET_NAME_PATH", str);

                return 0;
        }


        if (names_pci(dev, &names) < 0)
                return 0;


        if (names.type == NET_PCI) {
                char str[IFNAMSIZ];

                if (names.pci_onboard[0] &&
                    snprintf_ok(str, sizeof str, "%s%s", prefix, names.pci_onboard))
                        udev_builtin_add_property(dev, test, "ID_NET_NAME_ONBOARD", str);

                if (names.pci_onboard_label &&
                    snprintf_ok(str, sizeof str, "%s%s",
                                naming_scheme_has(NAMING_LABEL_NOPREFIX) ? "" : prefix,
                                names.pci_onboard_label))
                        udev_builtin_add_property(dev, test, "ID_NET_LABEL_ONBOARD", str);

                if (names.pci_path[0] &&
                    snprintf_ok(str, sizeof str, "%s%s", prefix, names.pci_path))
                        udev_builtin_add_property(dev, test, "ID_NET_NAME_PATH", str);

                if (names.pci_slot[0] &&
                    snprintf_ok(str, sizeof str, "%s%s", prefix, names.pci_slot))
                        udev_builtin_add_property(dev, test, "ID_NET_NAME_SLOT", str);
                return 0;
        }


        if (names_usb(dev, &names) >= 0 && names.type == NET_USB) {
                char str[IFNAMSIZ];

                if (names.pci_path[0] &&
                    snprintf_ok(str, sizeof str, "%s%s%s", prefix, names.pci_path, names.usb_ports))
                        udev_builtin_add_property(dev, test, "ID_NET_NAME_PATH", str);

                if (names.pci_slot[0] &&
                    snprintf_ok(str, sizeof str, "%s%s%s", prefix, names.pci_slot, names.usb_ports))
                        udev_builtin_add_property(dev, test, "ID_NET_NAME_SLOT", str);
                return 0;
        }


        if (names_bcma(dev, &names) >= 0 && names.type == NET_BCMA) {
                char str[IFNAMSIZ];

                if (names.pci_path[0] &&
                    snprintf_ok(str, sizeof str, "%s%s%s", prefix, names.pci_path, names.bcma_core))
                        udev_builtin_add_property(dev, test, "ID_NET_NAME_PATH", str);

                if (names.pci_slot[0] &&
                    snprintf(str, sizeof str, "%s%s%s", prefix, names.pci_slot, names.bcma_core))
                        udev_builtin_add_property(dev, test, "ID_NET_NAME_SLOT", str);
                return 0;
        }

        return 0;
}
