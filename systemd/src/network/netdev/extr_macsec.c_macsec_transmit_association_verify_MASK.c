#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ packet_number; scalar_t__ key_len; } ;
struct TYPE_7__ {TYPE_2__* section; TYPE_4__ sa; struct TYPE_7__* macsec; } ;
typedef  TYPE_1__ TransmitAssociation ;
struct TYPE_8__ {int /*<<< orphan*/  line; int /*<<< orphan*/  filename; } ;
typedef  int /*<<< orphan*/  NetDev ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC6(TransmitAssociation *t) {
        NetDev *netdev;
        int r;

        FUNC2(t);
        FUNC2(t->macsec);

        netdev = FUNC0(t->macsec);

        if (FUNC5(t->section))
                return -EINVAL;

        if (t->sa.packet_number == 0)
                return FUNC3(netdev, FUNC1(EINVAL),
                                              "%s: MACsec transmit secure association without PacketNumber= configured. "
                                              "Ignoring [MACsecTransmitAssociation] section from line %u",
                                              t->section->filename, t->section->line);

        r = FUNC4(netdev, &t->sa);
        if (r < 0)
                return r;

        if (t->sa.key_len <= 0)
                return FUNC3(netdev, FUNC1(EINVAL),
                                              "%s: MACsec transmit secure association without key configured. "
                                              "Ignoring [MACsecTransmitAssociation] section from line %u",
                                              t->section->filename, t->section->line);

        return 0;
}