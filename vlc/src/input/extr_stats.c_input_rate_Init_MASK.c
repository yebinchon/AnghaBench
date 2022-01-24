#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* samples; scalar_t__ value; scalar_t__ updates; int /*<<< orphan*/  lock; } ;
typedef  TYPE_2__ input_rate_t ;
struct TYPE_4__ {void* date; } ;

/* Variables and functions */
 void* VLC_TICK_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(input_rate_t *rate)
{
    FUNC0(&rate->lock);
    rate->updates = 0;
    rate->value = 0;
    rate->samples[0].date = VLC_TICK_INVALID;
    rate->samples[1].date = VLC_TICK_INVALID;
}