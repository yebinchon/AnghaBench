#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sd_netlink_message ;
struct TYPE_3__ {scalar_t__ port; scalar_t__ encrypt; scalar_t__ encoding_an; } ;
typedef  int /*<<< orphan*/  NetDev ;
typedef  TYPE_1__ MACsec ;
typedef  int /*<<< orphan*/  Link ;

/* Variables and functions */
 int /*<<< orphan*/  IFLA_MACSEC_ENCODING_SA ; 
 int /*<<< orphan*/  IFLA_MACSEC_ENCRYPT ; 
 int /*<<< orphan*/  IFLA_MACSEC_PORT ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC5(NetDev *netdev, Link *link, sd_netlink_message *m) {
        MACsec *v;
        int r;

        FUNC1(netdev);
        FUNC1(m);

        v = FUNC0(netdev);

        if (v->port > 0) {
                r = FUNC3(m, IFLA_MACSEC_PORT, v->port);
                if (r < 0)
                        return FUNC2(netdev, r, "Could not append IFLA_MACSEC_PORT attribute: %m");
        }

        if (v->encrypt >= 0) {
                r = FUNC4(m, IFLA_MACSEC_ENCRYPT, v->encrypt);
                if (r < 0)
                        return FUNC2(netdev, r, "Could not append IFLA_MACSEC_ENCRYPT attribute: %m");
        }

        r = FUNC4(m, IFLA_MACSEC_ENCODING_SA, v->encoding_an);
        if (r < 0)
                return FUNC2(netdev, r, "Could not append IFLA_MACSEC_ENCODING_SA attribute: %m");

        return r;
}