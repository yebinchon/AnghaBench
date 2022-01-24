#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  line; int /*<<< orphan*/  filename; } ;
struct TYPE_8__ {scalar_t__ port; int /*<<< orphan*/  as_uint64; int /*<<< orphan*/  mac; } ;
struct TYPE_9__ {TYPE_3__* section; TYPE_1__ sci; int /*<<< orphan*/  receive_channels; struct TYPE_9__* macsec; } ;
typedef  TYPE_2__ ReceiveChannel ;
typedef  int /*<<< orphan*/  NetDev ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 () ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 scalar_t__ FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  uint64_hash_ops ; 

__attribute__((used)) static int FUNC9(ReceiveChannel *c) {
        NetDev *netdev;
        int r;

        FUNC2(c);
        FUNC2(c->macsec);

        netdev = FUNC0(c->macsec);

        if (FUNC8(c->section))
                return -EINVAL;

        if (FUNC3(&c->sci.mac))
                return FUNC4(netdev, FUNC1(EINVAL),
                                              "%s: MACsec receive channel without MAC address configured. "
                                              "Ignoring [MACsecReceiveChannel] section from line %u",
                                              c->section->filename, c->section->line);

        if (c->sci.port == 0)
                return FUNC4(netdev, FUNC1(EINVAL),
                                              "%s: MACsec receive channel without port configured. "
                                              "Ignoring [MACsecReceiveChannel] section from line %u",
                                              c->section->filename, c->section->line);

        r = FUNC6(&c->macsec->receive_channels, &uint64_hash_ops);
        if (r < 0)
                return FUNC5();

        r = FUNC7(c->macsec->receive_channels, &c->sci.as_uint64, c);
        if (r == -EEXIST)
                return FUNC4(netdev, r,
                                              "%s: Multiple [MACsecReceiveChannel] sections have same SCI, "
                                              "Ignoring [MACsecReceiveChannel] section from line %u",
                                              c->section->filename, c->section->line);
        if (r < 0)
                return FUNC4(netdev, r,
                                              "%s: Failed to store [MACsecReceiveChannel] section at hashmap, "
                                              "Ignoring [MACsecReceiveChannel] section from line %u",
                                              c->section->filename, c->section->line);
        return 0;
}