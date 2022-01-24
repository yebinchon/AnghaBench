#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct netnames {char* pci_onboard; char const* pci_onboard_label; int /*<<< orphan*/ * pcidev; } ;
typedef  int /*<<< orphan*/  sd_device ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  NAMING_ZERO_ACPI_INDEX ; 
 unsigned long ONBOARD_INDEX_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char const*,unsigned long*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,char const**) ; 
 size_t FUNC3 (char**,size_t,char*,...) ; 
 unsigned long FUNC4 (char const*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5(sd_device *dev, struct netnames *names) {
        unsigned long idx, dev_port = 0;
        const char *attr, *port_name = NULL;
        size_t l;
        char *s;
        int r;

        /* ACPI _DSM — device specific method for naming a PCI or PCI Express device */
        if (FUNC2(names->pcidev, "acpi_index", &attr) < 0) {
                /* SMBIOS type 41 — Onboard Devices Extended Information */
                r = FUNC2(names->pcidev, "index", &attr);
                if (r < 0)
                        return r;
        }

        r = FUNC1(attr, &idx);
        if (r < 0)
                return r;
        if (idx == 0 && !FUNC0(NAMING_ZERO_ACPI_INDEX))
                return -EINVAL;

        /* Some BIOSes report rubbish indexes that are excessively high (2^24-1 is an index VMware likes to
         * report for example). Let's define a cut-off where we don't consider the index reliable anymore. We
         * pick some arbitrary cut-off, which is somewhere beyond the realistic number of physical network
         * interface a system might have. Ideally the kernel would already filter his crap for us, but it
         * doesn't currently. */
        if (idx > ONBOARD_INDEX_MAX)
                return -ENOENT;

        /* kernel provided port index for multiple ports on a single PCI function */
        if (FUNC2(dev, "dev_port", &attr) >= 0)
                dev_port = FUNC4(attr, NULL, 10);

        /* kernel provided front panel port name for multiple port PCI device */
        (void) FUNC2(dev, "phys_port_name", &port_name);

        s = names->pci_onboard;
        l = sizeof(names->pci_onboard);
        l = FUNC3(&s, l, "o%lu", idx);
        if (port_name)
                l = FUNC3(&s, l, "n%s", port_name);
        else if (dev_port > 0)
                l = FUNC3(&s, l, "d%lu", dev_port);
        if (l == 0)
                names->pci_onboard[0] = '\0';

        if (FUNC2(names->pcidev, "label", &names->pci_onboard_label) < 0)
                names->pci_onboard_label = NULL;

        return 0;
}