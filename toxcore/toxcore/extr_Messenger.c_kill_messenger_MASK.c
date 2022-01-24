#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_5__ {scalar_t__ numfriends; struct TYPE_5__* friendlist; int /*<<< orphan*/  net; int /*<<< orphan*/  dht; int /*<<< orphan*/  net_crypto; int /*<<< orphan*/  onion_c; int /*<<< orphan*/  onion_a; int /*<<< orphan*/  onion; int /*<<< orphan*/  fr_c; scalar_t__ tcp_server; } ;
typedef  TYPE_1__ Messenger ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

void FUNC10(Messenger *m)
{
    if (!m)
        return;

    uint32_t i;

    if (m->tcp_server) {
        FUNC3(m->tcp_server);
    }

    FUNC4(m->fr_c);
    FUNC7(m->onion);
    FUNC8(m->onion_a);
    FUNC9(m->onion_c);
    FUNC5(m->net_crypto);
    FUNC2(m->dht);
    FUNC6(m->net);

    for (i = 0; i < m->numfriends; ++i) {
        FUNC0(m, i);
    }

    FUNC1(m->friendlist);
    FUNC1(m);
}