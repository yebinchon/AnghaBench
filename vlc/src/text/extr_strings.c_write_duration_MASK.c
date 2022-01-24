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
typedef  int /*<<< orphan*/  vlc_tick_t ;
struct vlc_memstream {int dummy; } ;
struct TYPE_3__ {long long rem; int /*<<< orphan*/  quot; } ;
typedef  TYPE_1__ lldiv_t ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_FREQ ; 
 TYPE_1__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct vlc_memstream*,char*,int /*<<< orphan*/ ,long long,long long) ; 

__attribute__((used)) static void FUNC2(struct vlc_memstream *stream, vlc_tick_t duration)
{
    lldiv_t d;
    long long sec;

    duration /= CLOCK_FREQ;
    d = FUNC0(duration, 60);
    sec = d.rem;
    d = FUNC0(d.quot, 60);
    FUNC1(stream, "%02lld:%02lld:%02lld", d.quot, d.rem, sec);
}