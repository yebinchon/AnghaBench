#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  DHT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  m ; 

void FUNC2(DHT *dht)
{
    static int dht_on = 0;

    if (!dht_on && FUNC0(dht)) {
        dht_on = 1;
    } else if (dht_on && !FUNC0(dht)) {
        dht_on = 0;
    }

    FUNC1(m);
}