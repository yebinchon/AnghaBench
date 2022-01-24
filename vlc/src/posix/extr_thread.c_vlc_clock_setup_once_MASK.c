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
struct timespec {scalar_t__ tv_sec; int tv_nsec; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct timespec*) ; 
 scalar_t__ FUNC2 (int) ; 
 int vlc_clock_prec ; 

__attribute__((used)) static void FUNC3 (void)
{
    struct timespec res;
    if (FUNC2(FUNC1(CLOCK_MONOTONIC, &res) != 0 || res.tv_sec != 0))
        FUNC0 ();
    vlc_clock_prec = (res.tv_nsec + 500) / 1000;
}