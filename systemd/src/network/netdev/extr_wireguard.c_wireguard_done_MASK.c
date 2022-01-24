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
struct TYPE_7__ {int /*<<< orphan*/  peers_with_failed_endpoint; int /*<<< orphan*/  peers_with_unresolved_endpoint; int /*<<< orphan*/  peers_by_section; int /*<<< orphan*/  private_key_file; int /*<<< orphan*/  private_key; int /*<<< orphan*/  resolve_retry_event_source; } ;
typedef  TYPE_1__ Wireguard ;
typedef  TYPE_1__ NetDev ;

/* Variables and functions */
 int /*<<< orphan*/  WG_KEY_LEN ; 
 TYPE_1__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wireguard_peer_free ; 

__attribute__((used)) static void FUNC7(NetDev *netdev) {
        Wireguard *w;

        FUNC1(netdev);
        w = FUNC0(netdev);
        FUNC1(w);

        FUNC5(w->resolve_retry_event_source);

        FUNC2(w->private_key, WG_KEY_LEN);
        FUNC3(w->private_key_file);

        FUNC4(w->peers_by_section, wireguard_peer_free);
        FUNC6(w->peers_with_unresolved_endpoint);
        FUNC6(w->peers_with_failed_endpoint);
}