
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int buffer ;
typedef int DHCPMessage ;


 int DHCP_FQDN_FLAG_E ;
 int DHCP_FQDN_FLAG_S ;
 int DHCP_MAX_FQDN_LENGTH ;
 int SD_DHCP_OPTION_FQDN ;
 int dhcp_option_append (int *,size_t,size_t*,int ,int ,int,int*) ;
 int dns_name_to_wire_format (char const*,int*,int,int) ;

__attribute__((used)) static int client_append_fqdn_option(
                DHCPMessage *message,
                size_t optlen,
                size_t *optoffset,
                const char *fqdn) {

        uint8_t buffer[3 + DHCP_MAX_FQDN_LENGTH];
        int r;

        buffer[0] = DHCP_FQDN_FLAG_S |
                    DHCP_FQDN_FLAG_E;
        buffer[1] = 0;
        buffer[2] = 0;

        r = dns_name_to_wire_format(fqdn, buffer + 3, sizeof(buffer) - 3, 0);
        if (r > 0)
                r = dhcp_option_append(message, optlen, optoffset, 0,
                                       SD_DHCP_OPTION_FQDN, 3 + r, buffer);

        return r;
}
