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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int /*<<< orphan*/  DHCP6_FQDN_FLAG_S ; 
 int /*<<< orphan*/  DNS_WIRE_FORMAT_HOSTNAME_MAX ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  SD_DHCP6_OPTION_FQDN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ **,size_t*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char const*) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ *,int,int) ; 

int FUNC4(uint8_t **buf, size_t *buflen, const char *fqdn) {
        uint8_t buffer[1 + DNS_WIRE_FORMAT_HOSTNAME_MAX];
        int r;

        FUNC0(buf && *buf && buflen && fqdn, -EINVAL);

        buffer[0] = DHCP6_FQDN_FLAG_S; /* Request server to perform AAAA RR DNS updates */

        /* Store domain name after flags field */
        r = FUNC3(fqdn, buffer + 1, sizeof(buffer) - 1,  false);
        if (r <= 0)
                return r;

        /*
         * According to RFC 4704, chapter 4.2 only add terminating zero-length
         * label in case a FQDN is provided. Since dns_name_to_wire_format
         * always adds terminating zero-length label remove if only a hostname
         * is provided.
         */
        if (FUNC2(fqdn))
                r--;

        r = FUNC1(buf, buflen, SD_DHCP6_OPTION_FQDN, 1 + r, buffer);

        return r;
}