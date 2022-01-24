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
struct virtfn_info {struct netnames* physfn_pcidev; scalar_t__* suffix; } ;
struct netnames {scalar_t__* pci_path; scalar_t__* pci_slot; scalar_t__* pci_onboard; struct netnames* pcidev; int /*<<< orphan*/  type; } ;
typedef  struct netnames sd_device ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  NAMING_SR_IOV_V ; 
 int /*<<< orphan*/  NET_PCI ; 
 int /*<<< orphan*/  FUNC0 (struct netnames*) ; 
 int /*<<< orphan*/  FUNC1 (struct netnames*,struct netnames*) ; 
 int /*<<< orphan*/  FUNC2 (struct netnames*,struct netnames*) ; 
 scalar_t__ FUNC3 (struct netnames*,struct netnames*,struct virtfn_info*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct netnames*,struct netnames**) ; 
 int FUNC6 (struct netnames*,char*,int /*<<< orphan*/ *,struct netnames**) ; 
 scalar_t__ FUNC7 (struct netnames*,char const**) ; 
 int /*<<< orphan*/  FUNC8 (struct netnames*) ; 
 struct netnames* FUNC9 (struct netnames*) ; 
 scalar_t__ FUNC10 (char*,char const*) ; 
 int FUNC11 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__*,int,scalar_t__*,scalar_t__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(sd_device *dev, struct netnames *names) {
        sd_device *parent;
        struct netnames vf_names = {};
        struct virtfn_info vf_info = {};
        const char *subsystem;
        int r;

        FUNC0(dev);
        FUNC0(names);

        r = FUNC5(dev, &parent);
        if (r < 0)
                return r;
        /* skip virtio subsystem if present */
        parent = FUNC9(parent);

        if (!parent)
                return -ENOENT;

        /* check if our direct parent is a PCI device with no other bus in-between */
        if (FUNC7(parent, &subsystem) >= 0 &&
            FUNC10("pci", subsystem)) {
                names->type = NET_PCI;
                names->pcidev = parent;
        } else {
                r = FUNC6(dev, "pci", NULL, &names->pcidev);
                if (r < 0)
                        return r;
        }

        if (FUNC4(NAMING_SR_IOV_V) &&
            FUNC3(dev, names, &vf_info) >= 0) {
                /* If this is an SR-IOV virtual device, get base name using physical device and add virtfn suffix. */
                vf_names.pcidev = vf_info.physfn_pcidev;
                FUNC1(dev, &vf_names);
                FUNC2(dev, &vf_names);
                if (vf_names.pci_onboard[0])
                        if (FUNC11(vf_names.pci_onboard) + FUNC11(vf_info.suffix) < sizeof(names->pci_onboard))
                                FUNC12(names->pci_onboard, sizeof(names->pci_onboard),
                                         vf_names.pci_onboard, vf_info.suffix, NULL);
                if (vf_names.pci_slot[0])
                        if (FUNC11(vf_names.pci_slot) + FUNC11(vf_info.suffix) < sizeof(names->pci_slot))
                                FUNC12(names->pci_slot, sizeof(names->pci_slot),
                                         vf_names.pci_slot, vf_info.suffix, NULL);
                if (vf_names.pci_path[0])
                        if (FUNC11(vf_names.pci_path) + FUNC11(vf_info.suffix) < sizeof(names->pci_path))
                                FUNC12(names->pci_path, sizeof(names->pci_path),
                                         vf_names.pci_path, vf_info.suffix, NULL);
                FUNC8(vf_info.physfn_pcidev);
        } else {
                FUNC1(dev, names);
                FUNC2(dev, names);
        }

        return 0;
}