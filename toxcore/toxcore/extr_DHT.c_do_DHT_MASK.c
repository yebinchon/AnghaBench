#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ last_run; scalar_t__ assoc; int /*<<< orphan*/  ping; scalar_t__ loaded_num_nodes; } ;
typedef  TYPE_1__ DHT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

void FUNC8(DHT *dht)
{
    FUNC7();

    if (dht->last_run == FUNC6()) {
        return;
    }

    // Load friends/clients if first call to do_DHT
    if (dht->loaded_num_nodes) {
        FUNC0(dht);
    }

    FUNC2(dht);
    FUNC3(dht);
    FUNC4(dht);
    FUNC5(dht->ping);
    //do_hardening(dht);
#ifdef ENABLE_ASSOC_DHT

    if (dht->assoc)
        do_Assoc(dht->assoc, dht);

#endif
    dht->last_run = FUNC6();
}