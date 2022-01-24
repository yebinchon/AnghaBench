#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_tick_t ;
struct TYPE_3__ {int /*<<< orphan*/  (* timeGetTime ) () ;} ;
struct TYPE_4__ {TYPE_1__ multimedia; } ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int CLOCK_FREQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__ clk ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static vlc_tick_t FUNC3 (void)
{
    DWORD ts = clk.multimedia.timeGetTime ();

    /* milliseconds */
    FUNC1 ((CLOCK_FREQ % 1000) == 0, "Broken frequencies ratio");
    return FUNC0( ts );
}