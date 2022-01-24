#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  new_id ;
struct TYPE_3__ {int /*<<< orphan*/  dns_transactions; } ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 int TRANSACTIONS_MAX ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int) ; 

__attribute__((used)) static uint16_t FUNC4(Manager *m) {
        uint16_t new_id;

        /* Find a fresh, unused transaction id. Note that this loop is bounded because there's a limit on the number of
         * transactions, and it's much lower than the space of IDs. */

        FUNC1(TRANSACTIONS_MAX < 0xFFFF);

        do
                FUNC3(&new_id, sizeof(new_id));
        while (new_id == 0 ||
               FUNC2(m->dns_transactions, FUNC0(new_id)));

        return new_id;
}