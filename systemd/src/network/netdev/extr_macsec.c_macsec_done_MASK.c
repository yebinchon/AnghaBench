#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  receive_associations_by_section; int /*<<< orphan*/  transmit_associations_by_section; int /*<<< orphan*/  receive_channels_by_section; int /*<<< orphan*/  receive_channels; } ;
typedef  TYPE_1__ NetDev ;
typedef  TYPE_1__ MACsec ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  macsec_receive_association_free ; 
 int /*<<< orphan*/  macsec_receive_channel_free ; 
 int /*<<< orphan*/  macsec_transmit_association_free ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(NetDev *netdev) {
        MACsec *t;

        FUNC1(netdev);

        t = FUNC0(netdev);

        FUNC1(t);

        FUNC2(t->receive_channels, macsec_receive_channel_free);
        FUNC2(t->receive_channels_by_section, macsec_receive_channel_free);
        FUNC2(t->transmit_associations_by_section, macsec_transmit_association_free);
        FUNC2(t->receive_associations_by_section, macsec_receive_association_free);
}