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
typedef  int /*<<< orphan*/  uint64_t ;
struct ether_addr {int* ether_addr_octet; } ;
typedef  int /*<<< orphan*/  sd_device ;
typedef  int /*<<< orphan*/  result ;
typedef  scalar_t__ MACAddressPolicy ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAC_ADDRESS_POLICY_PERSISTENT ; 
 scalar_t__ MAC_ADDRESS_POLICY_RANDOM ; 
 int /*<<< orphan*/  NAMING_STABLE_VIRTUAL_MACS ; 
#define  NET_ADDR_PERM 131 
#define  NET_ADDR_RANDOM 130 
#define  NET_ADDR_SET 129 
#define  NET_ADDR_STOLEN 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,unsigned int*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*,unsigned int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int*,int) ; 

__attribute__((used)) static int FUNC12(sd_device *device, MACAddressPolicy policy, struct ether_addr *mac) {
        unsigned addr_type;
        bool want_random = policy == MAC_ADDRESS_POLICY_RANDOM;
        int r;

        FUNC1(FUNC0(policy, MAC_ADDRESS_POLICY_RANDOM, MAC_ADDRESS_POLICY_PERSISTENT));

        r = FUNC3(device, "addr_assign_type", &addr_type);
        if (r < 0)
                return r;
        switch (addr_type) {
        case NET_ADDR_SET:
                return FUNC4(device, "MAC on the device already set by userspace");
        case NET_ADDR_STOLEN:
                return FUNC4(device, "MAC on the device already set based on another device");
        case NET_ADDR_RANDOM:
        case NET_ADDR_PERM:
                break;
        default:
                return FUNC5(device, "Unknown addr_assign_type %u, ignoring", addr_type);
        }

        if (want_random == (addr_type == NET_ADDR_RANDOM))
                return FUNC4(device, "MAC on the device already matches policy *%s*",
                                        FUNC7(policy));

        if (want_random) {
                FUNC4(device, "Using random bytes to generate MAC");
                FUNC11(mac->ether_addr_octet, ETH_ALEN);
        } else {
                uint64_t result;

                r = FUNC10(device,
                                                    FUNC9(NAMING_STABLE_VIRTUAL_MACS),
                                                    &result);
                if (r < 0)
                        return FUNC6(device, r, "Could not generate persistent MAC: %m");

                FUNC4(device, "Using generated persistent MAC address");
                FUNC2(ETH_ALEN <= sizeof(result));
                FUNC8(mac->ether_addr_octet, &result, ETH_ALEN);
        }

        /* see eth_random_addr in the kernel */
        mac->ether_addr_octet[0] &= 0xfe;  /* clear multicast bit */
        mac->ether_addr_octet[0] |= 0x02;  /* set local assignment bit (IEEE802) */
        return 1;
}