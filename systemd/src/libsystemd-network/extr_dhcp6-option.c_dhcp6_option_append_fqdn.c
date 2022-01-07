
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int buffer ;


 int DHCP6_FQDN_FLAG_S ;
 int DNS_WIRE_FORMAT_HOSTNAME_MAX ;
 int EINVAL ;
 int SD_DHCP6_OPTION_FQDN ;
 int assert_return (int ,int ) ;
 int dhcp6_option_append (int **,size_t*,int ,int,int *) ;
 scalar_t__ dns_name_is_single_label (char const*) ;
 int dns_name_to_wire_format (char const*,int *,int,int) ;

int dhcp6_option_append_fqdn(uint8_t **buf, size_t *buflen, const char *fqdn) {
        uint8_t buffer[1 + DNS_WIRE_FORMAT_HOSTNAME_MAX];
        int r;

        assert_return(buf && *buf && buflen && fqdn, -EINVAL);

        buffer[0] = DHCP6_FQDN_FLAG_S;


        r = dns_name_to_wire_format(fqdn, buffer + 1, sizeof(buffer) - 1, 0);
        if (r <= 0)
                return r;







        if (dns_name_is_single_label(fqdn))
                r--;

        r = dhcp6_option_append(buf, buflen, SD_DHCP6_OPTION_FQDN, 1 + r, buffer);

        return r;
}
