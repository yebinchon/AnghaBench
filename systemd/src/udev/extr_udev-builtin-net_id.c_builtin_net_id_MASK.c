#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct netnames {scalar_t__ type; char* pci_path; char* pci_slot; int /*<<< orphan*/  bcma_core; int /*<<< orphan*/  usb_ports; scalar_t__ pci_onboard_label; scalar_t__* pci_onboard; int /*<<< orphan*/  netdevsim_path; int /*<<< orphan*/  platform_path; int /*<<< orphan*/  vio_slot; int /*<<< orphan*/  ccw_busid; int /*<<< orphan*/ * mac; scalar_t__ mac_valid; } ;
typedef  int /*<<< orphan*/  sd_device ;
struct TYPE_2__ {char* name; } ;

/* Variables and functions */
#define  ARPHRD_ETHER 130 
#define  ARPHRD_INFINIBAND 129 
#define  ARPHRD_SLIP 128 
 int IFNAMSIZ ; 
 int /*<<< orphan*/  NAMING_INFINIBAND ; 
 int /*<<< orphan*/  NAMING_LABEL_NOPREFIX ; 
 scalar_t__ NET_BCMA ; 
 scalar_t__ NET_CCW ; 
 scalar_t__ NET_NETDEVSIM ; 
 scalar_t__ NET_PCI ; 
 scalar_t__ NET_PLATFORM ; 
 scalar_t__ NET_USB ; 
 scalar_t__ NET_VIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct netnames*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,struct netnames*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,struct netnames*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct netnames*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,struct netnames*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,struct netnames*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,struct netnames*,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,struct netnames*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,struct netnames*) ; 
 TYPE_1__* FUNC9 () ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,char const**) ; 
 int FUNC12 (int /*<<< orphan*/ *,char*,char const**) ; 
 scalar_t__ FUNC13 (char*,int,char*,char const*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (char*,int,char*,char const*,char*,...) ; 
 scalar_t__ FUNC15 (char const*,char const*) ; 
 unsigned long FUNC16 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC18 (char*,char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC19(sd_device *dev, int argc, char *argv[], bool test) {
        const char *s, *p, *devtype, *prefix = "en";
        struct netnames names = {};
        unsigned long i;
        int r;

        /* handle only ARPHRD_ETHER, ARPHRD_SLIP and ARPHRD_INFINIBAND devices */
        r = FUNC12(dev, "type", &s);
        if (r < 0)
                return r;

        i = FUNC16(s, NULL, 0);
        switch (i) {
        case ARPHRD_ETHER:
                prefix = "en";
                break;
        case ARPHRD_INFINIBAND:
                if (FUNC10(NAMING_INFINIBAND))
                        prefix = "ib";
                else
                        return 0;
                break;
        case ARPHRD_SLIP:
                prefix = "sl";
                break;
        default:
                return 0;
        }

        /* skip stacked devices, like VLANs, ... */
        r = FUNC12(dev, "ifindex", &s);
        if (r < 0)
                return r;
        r = FUNC12(dev, "iflink", &p);
        if (r < 0)
                return r;
        if (!FUNC15(s, p))
                return 0;

        if (FUNC11(dev, &devtype) >= 0) {
                if (FUNC15("wlan", devtype))
                        prefix = "wl";
                else if (FUNC15("wwan", devtype))
                        prefix = "ww";
        }

        FUNC17(dev, test, "ID_NET_NAMING_SCHEME", FUNC9()->name);

        r = FUNC3(dev, &names);
        if (r >= 0 && names.mac_valid) {
                char str[IFNAMSIZ];

                FUNC18(str, "%sx%02x%02x%02x%02x%02x%02x", prefix,
                         names.mac[0], names.mac[1], names.mac[2],
                         names.mac[3], names.mac[4], names.mac[5]);
                FUNC17(dev, test, "ID_NET_NAME_MAC", str);

                FUNC0(dev, &names, test);
        }

        /* get path names for Linux on System z network devices */
        if (FUNC2(dev, &names) >= 0 && names.type == NET_CCW) {
                char str[IFNAMSIZ];

                if (FUNC14(str, sizeof str, "%s%s", prefix, names.ccw_busid))
                        FUNC17(dev, test, "ID_NET_NAME_PATH", str);
                return 0;
        }

        /* get ibmveth/ibmvnic slot-based names. */
        if (FUNC8(dev, &names) >= 0 && names.type == NET_VIO) {
                char str[IFNAMSIZ];

                if (FUNC14(str, sizeof str, "%s%s", prefix, names.vio_slot))
                        FUNC17(dev, test, "ID_NET_NAME_SLOT", str);
                return 0;
        }

        /* get ACPI path names for ARM64 platform devices */
        if (FUNC6(dev, &names, test) >= 0 && names.type == NET_PLATFORM) {
                char str[IFNAMSIZ];

                if (FUNC14(str, sizeof str, "%s%s", prefix, names.platform_path))
                        FUNC17(dev, test, "ID_NET_NAME_PATH", str);
                return 0;
        }

        /* get netdevsim path names */
        if (FUNC4(dev, &names) >= 0 && names.type == NET_NETDEVSIM) {
                char str[IFNAMSIZ];

                if (FUNC14(str, sizeof str, "%s%s", prefix, names.netdevsim_path))
                        FUNC17(dev, test, "ID_NET_NAME_PATH", str);

                return 0;
        }

        /* get PCI based path names, we compose only PCI based paths */
        if (FUNC5(dev, &names) < 0)
                return 0;

        /* plain PCI device */
        if (names.type == NET_PCI) {
                char str[IFNAMSIZ];

                if (names.pci_onboard[0] &&
                    FUNC14(str, sizeof str, "%s%s", prefix, names.pci_onboard))
                        FUNC17(dev, test, "ID_NET_NAME_ONBOARD", str);

                if (names.pci_onboard_label &&
                    FUNC14(str, sizeof str, "%s%s",
                                FUNC10(NAMING_LABEL_NOPREFIX) ? "" : prefix,
                                names.pci_onboard_label))
                        FUNC17(dev, test, "ID_NET_LABEL_ONBOARD", str);

                if (names.pci_path[0] &&
                    FUNC14(str, sizeof str, "%s%s", prefix, names.pci_path))
                        FUNC17(dev, test, "ID_NET_NAME_PATH", str);

                if (names.pci_slot[0] &&
                    FUNC14(str, sizeof str, "%s%s", prefix, names.pci_slot))
                        FUNC17(dev, test, "ID_NET_NAME_SLOT", str);
                return 0;
        }

        /* USB device */
        if (FUNC7(dev, &names) >= 0 && names.type == NET_USB) {
                char str[IFNAMSIZ];

                if (names.pci_path[0] &&
                    FUNC14(str, sizeof str, "%s%s%s", prefix, names.pci_path, names.usb_ports))
                        FUNC17(dev, test, "ID_NET_NAME_PATH", str);

                if (names.pci_slot[0] &&
                    FUNC14(str, sizeof str, "%s%s%s", prefix, names.pci_slot, names.usb_ports))
                        FUNC17(dev, test, "ID_NET_NAME_SLOT", str);
                return 0;
        }

        /* Broadcom bus */
        if (FUNC1(dev, &names) >= 0 && names.type == NET_BCMA) {
                char str[IFNAMSIZ];

                if (names.pci_path[0] &&
                    FUNC14(str, sizeof str, "%s%s%s", prefix, names.pci_path, names.bcma_core))
                        FUNC17(dev, test, "ID_NET_NAME_PATH", str);

                if (names.pci_slot[0] &&
                    FUNC13(str, sizeof str, "%s%s%s", prefix, names.pci_slot, names.bcma_core))
                        FUNC17(dev, test, "ID_NET_NAME_SLOT", str);
                return 0;
        }

        return 0;
}