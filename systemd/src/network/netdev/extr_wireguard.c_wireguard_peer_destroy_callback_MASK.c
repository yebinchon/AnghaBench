#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  section; struct TYPE_6__* wireguard; } ;
typedef  TYPE_1__ WireguardPeer ;
typedef  int /*<<< orphan*/  NetDev ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC5(WireguardPeer *peer) {
        NetDev *netdev;

        FUNC1(peer);
        FUNC1(peer->wireguard);

        netdev = FUNC0(peer->wireguard);

        if (FUNC3(peer->section))
                FUNC4(peer);

        FUNC2(netdev);
}