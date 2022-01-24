#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint16_t ;
struct rtattr {int dummy; } ;
struct TYPE_10__ {scalar_t__ protocol; unsigned int n_containers; TYPE_7__* hdr; TYPE_5__* containers; int /*<<< orphan*/  sealed; } ;
typedef  TYPE_1__ sd_netlink_message ;
typedef  int /*<<< orphan*/  sd_netlink ;
struct TYPE_12__ {int /*<<< orphan*/  nlmsg_type; } ;
struct TYPE_11__ {int /*<<< orphan*/  const* type_system; int /*<<< orphan*/  attributes; } ;
typedef  int /*<<< orphan*/  NLTypeSystem ;
typedef  int /*<<< orphan*/  NLType ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 scalar_t__ NETLINK_GENERIC ; 
 scalar_t__ NETLINK_TYPE_NESTED ; 
 int FUNC0 (size_t) ; 
 scalar_t__ FUNC1 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_7__*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*,TYPE_5__*,struct rtattr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 size_t FUNC8 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const**) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int /*<<< orphan*/ ) ; 

int FUNC12(sd_netlink_message *m, sd_netlink *genl) {
        const NLType *nl_type;
        uint16_t type;
        size_t size;
        unsigned i;
        int r;

        FUNC4(m, -EINVAL);
        FUNC4(genl || m->protocol != NETLINK_GENERIC, -EINVAL);

        /* don't allow appending to message once parsed */
        if (!m->sealed)
                FUNC7(m);

        for (i = 1; i <= m->n_containers; i++)
                m->containers[i].attributes = FUNC5(m->containers[i].attributes);

        m->n_containers = 0;

        if (m->containers[0].attributes)
                /* top-level attributes have already been parsed */
                return 0;

        FUNC3(m->hdr);

        r = FUNC11(genl, &nl_type, m->hdr->nlmsg_type);
        if (r < 0)
                return r;

        type = FUNC9(nl_type);
        size = FUNC8(nl_type);

        if (type == NETLINK_TYPE_NESTED) {
                const NLTypeSystem *type_system;

                FUNC10(nl_type, &type_system);

                m->containers[0].type_system = type_system;

                r = FUNC6(m,
                                            &m->containers[m->n_containers],
                                            (struct rtattr*)((uint8_t*)FUNC1(m->hdr) + FUNC0(size)),
                                            FUNC2(m->hdr, size));
                if (r < 0)
                        return r;
        }

        return 0;
}