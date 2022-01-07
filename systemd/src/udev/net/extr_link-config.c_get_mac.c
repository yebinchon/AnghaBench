
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ether_addr {int* ether_addr_octet; } ;
typedef int sd_device ;
typedef int result ;
typedef scalar_t__ MACAddressPolicy ;


 int ETH_ALEN ;
 int IN_SET (scalar_t__,scalar_t__,int ) ;
 int MAC_ADDRESS_POLICY_PERSISTENT ;
 scalar_t__ MAC_ADDRESS_POLICY_RANDOM ;
 int NAMING_STABLE_VIRTUAL_MACS ;




 int assert (int ) ;
 int assert_cc (int) ;
 int link_unsigned_attribute (int *,char*,unsigned int*) ;
 int log_device_debug (int *,char*,...) ;
 int log_device_warning (int *,char*,unsigned int) ;
 int log_device_warning_errno (int *,int,char*) ;
 int mac_address_policy_to_string (scalar_t__) ;
 int memcpy (int*,int *,int) ;
 int naming_scheme_has (int ) ;
 int net_get_unique_predictable_data (int *,int ,int *) ;
 int random_bytes (int*,int) ;

__attribute__((used)) static int get_mac(sd_device *device, MACAddressPolicy policy, struct ether_addr *mac) {
        unsigned addr_type;
        bool want_random = policy == MAC_ADDRESS_POLICY_RANDOM;
        int r;

        assert(IN_SET(policy, MAC_ADDRESS_POLICY_RANDOM, MAC_ADDRESS_POLICY_PERSISTENT));

        r = link_unsigned_attribute(device, "addr_assign_type", &addr_type);
        if (r < 0)
                return r;
        switch (addr_type) {
        case 129:
                return log_device_debug(device, "MAC on the device already set by userspace");
        case 128:
                return log_device_debug(device, "MAC on the device already set based on another device");
        case 130:
        case 131:
                break;
        default:
                return log_device_warning(device, "Unknown addr_assign_type %u, ignoring", addr_type);
        }

        if (want_random == (addr_type == 130))
                return log_device_debug(device, "MAC on the device already matches policy *%s*",
                                        mac_address_policy_to_string(policy));

        if (want_random) {
                log_device_debug(device, "Using random bytes to generate MAC");
                random_bytes(mac->ether_addr_octet, ETH_ALEN);
        } else {
                uint64_t result;

                r = net_get_unique_predictable_data(device,
                                                    naming_scheme_has(NAMING_STABLE_VIRTUAL_MACS),
                                                    &result);
                if (r < 0)
                        return log_device_warning_errno(device, r, "Could not generate persistent MAC: %m");

                log_device_debug(device, "Using generated persistent MAC address");
                assert_cc(ETH_ALEN <= sizeof(result));
                memcpy(mac->ether_addr_octet, &result, ETH_ALEN);
        }


        mac->ether_addr_octet[0] &= 0xfe;
        mac->ether_addr_octet[0] |= 0x02;
        return 1;
}
