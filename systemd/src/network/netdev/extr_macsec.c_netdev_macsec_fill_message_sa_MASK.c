#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {scalar_t__ association_number; scalar_t__ packet_number; scalar_t__ key_len; scalar_t__ activate; int /*<<< orphan*/  key; int /*<<< orphan*/  key_id; } ;
typedef  TYPE_1__ sd_netlink_message ;
typedef  TYPE_1__ SecurityAssociation ;
typedef  TYPE_1__ NetDev ;

/* Variables and functions */
 int /*<<< orphan*/  MACSEC_ATTR_SA_CONFIG ; 
 scalar_t__ MACSEC_KEYID_LEN ; 
 int /*<<< orphan*/  MACSEC_SA_ATTR_ACTIVE ; 
 int /*<<< orphan*/  MACSEC_SA_ATTR_AN ; 
 int /*<<< orphan*/  MACSEC_SA_ATTR_KEY ; 
 int /*<<< orphan*/  MACSEC_SA_ATTR_KEYID ; 
 int /*<<< orphan*/  MACSEC_SA_ATTR_PN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,int,char*) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(NetDev *netdev, SecurityAssociation *a, sd_netlink_message *m) {
        int r;

        FUNC0(netdev);
        FUNC0(a);
        FUNC0(m);

        r = FUNC6(m, MACSEC_ATTR_SA_CONFIG);
        if (r < 0)
                return FUNC1(netdev, r, "Could not append MACSEC_ATTR_SA_CONFIG attribute: %m");

        r = FUNC4(m, MACSEC_SA_ATTR_AN, a->association_number);
        if (r < 0)
                return FUNC1(netdev, r, "Could not append MACSEC_SA_ATTR_AN attribute: %m");

        if (a->packet_number > 0) {
                r = FUNC3(m, MACSEC_SA_ATTR_PN, a->packet_number);
                if (r < 0)
                        return FUNC1(netdev, r, "Could not append MACSEC_SA_ATTR_PN attribute: %m");
        }

        if (a->key_len > 0) {
                r = FUNC2(m, MACSEC_SA_ATTR_KEYID, a->key_id, MACSEC_KEYID_LEN);
                if (r < 0)
                        return FUNC1(netdev, r, "Could not append MACSEC_SA_ATTR_KEYID attribute: %m");

                r = FUNC2(m, MACSEC_SA_ATTR_KEY, a->key, a->key_len);
                if (r < 0)
                        return FUNC1(netdev, r, "Could not append MACSEC_SA_ATTR_KEY attribute: %m");
        }

        if (a->activate >= 0) {
                r = FUNC4(m, MACSEC_SA_ATTR_ACTIVE, a->activate);
                if (r < 0)
                        return FUNC1(netdev, r, "Could not append MACSEC_SA_ATTR_ACTIVE attribute: %m");
        }

        r = FUNC5(m);
        if (r < 0)
                return FUNC1(netdev, r, "Could not append MACSEC_ATTR_SA_CONFIG attribute: %m");

        return 0;
}