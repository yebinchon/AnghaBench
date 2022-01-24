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
typedef  int /*<<< orphan*/  vlc_tick_t ;
struct timespec {int dummy; } ;

/* Variables and functions */
 scalar_t__ ETIMEDOUT ; 
 scalar_t__ errno ; 
 struct timespec FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (void*,unsigned int,struct timespec*) ; 

bool FUNC2(void *addr, unsigned val, vlc_tick_t delay)
{
    struct timespec ts = FUNC0(delay);

    return (FUNC1(addr, val, &ts) == 0 || errno != ETIMEDOUT);
}