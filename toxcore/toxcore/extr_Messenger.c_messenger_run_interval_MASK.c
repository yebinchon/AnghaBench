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
typedef  scalar_t__ uint32_t ;
struct TYPE_3__ {int /*<<< orphan*/  net_crypto; } ;
typedef  TYPE_1__ Messenger ;

/* Variables and functions */
 scalar_t__ MIN_RUN_INTERVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

uint32_t FUNC1(const Messenger *m)
{
    uint32_t crypto_interval = FUNC0(m->net_crypto);

    if (crypto_interval > MIN_RUN_INTERVAL) {
        return MIN_RUN_INTERVAL;
    } else {
        return crypto_interval;
    }
}