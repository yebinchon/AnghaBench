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
typedef  int vlc_tick_t ;
typedef  int /*<<< orphan*/  input_thread_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 () ; 

__attribute__((used)) static vlc_tick_t FUNC3(input_thread_t *input)
{
    int canc = FUNC2();
    /* TODO use the delay */
    vlc_tick_t system;
    if (FUNC0(input, &system, NULL))
        system = -1;
    FUNC1(canc);

    return system;
}