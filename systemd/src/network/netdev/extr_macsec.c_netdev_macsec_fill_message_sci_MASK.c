#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  as_uint64; } ;
typedef  TYPE_1__ sd_netlink_message ;
typedef  TYPE_1__ NetDev ;
typedef  TYPE_1__ MACsecSCI ;

/* Variables and functions */
 int /*<<< orphan*/  MACSEC_ATTR_RXSC_CONFIG ; 
 int /*<<< orphan*/  MACSEC_RXSC_ATTR_SCI ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,int,char*) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(NetDev *netdev, MACsecSCI *sci, sd_netlink_message *m) {
        int r;

        FUNC0(netdev);
        FUNC0(m);
        FUNC0(sci);

        r = FUNC4(m, MACSEC_ATTR_RXSC_CONFIG);
        if (r < 0)
                return FUNC1(netdev, r, "Could not append MACSEC_ATTR_RXSC_CONFIG attribute: %m");

        r = FUNC2(m, MACSEC_RXSC_ATTR_SCI, sci->as_uint64);
        if (r < 0)
                return FUNC1(netdev, r, "Could not append MACSEC_RXSC_ATTR_SCI attribute: %m");

        r = FUNC3(m);
        if (r < 0)
                return FUNC1(netdev, r, "Could not append MACSEC_ATTR_RXSC_CONFIG attribute: %m");

        return 0;
}