#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  preshared_key; struct TYPE_10__* preshared_key_file; struct TYPE_10__* endpoint_port; struct TYPE_10__* endpoint_host; struct TYPE_10__* ipmasks; scalar_t__ section; TYPE_1__* wireguard; } ;
typedef  TYPE_2__ WireguardPeer ;
typedef  TYPE_2__ WireguardIPmask ;
struct TYPE_9__ {int /*<<< orphan*/  peers_by_section; int /*<<< orphan*/  peers_with_failed_endpoint; int /*<<< orphan*/  peers_with_unresolved_endpoint; TYPE_2__* peers; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  WG_KEY_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  ipmasks ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  peers ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static void FUNC6(WireguardPeer *peer) {
        WireguardIPmask *mask;

        if (!peer)
                return;

        if (peer->wireguard) {
                FUNC0(peers, peer->wireguard->peers, peer);

                FUNC5(peer->wireguard->peers_with_unresolved_endpoint, peer);
                FUNC5(peer->wireguard->peers_with_failed_endpoint, peer);

                if (peer->section)
                        FUNC3(peer->wireguard->peers_by_section, peer->section);
        }

        FUNC4(peer->section);

        while ((mask = peer->ipmasks)) {
                FUNC0(ipmasks, peer->ipmasks, mask);
                FUNC2(mask);
        }

        FUNC2(peer->endpoint_host);
        FUNC2(peer->endpoint_port);
        FUNC2(peer->preshared_key_file);
        FUNC1(peer->preshared_key, WG_KEY_LEN);

        FUNC2(peer);
}