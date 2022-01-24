#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_2__* sys; } ;
typedef  TYPE_1__ audio_output_t ;
struct TYPE_7__ {scalar_t__ i_new_selected_dev; } ;
typedef  TYPE_2__ aout_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  AOUT_RESTART_OUTPUT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char const*) ; 

__attribute__((used)) static int
FUNC3(audio_output_t *p_aout, const char *name)
{
    aout_sys_t *p_sys = p_aout->sys;

    if (name)
        p_sys->i_new_selected_dev = FUNC2(name);
    else
        p_sys->i_new_selected_dev = 0;

    p_sys->i_new_selected_dev = p_sys->i_new_selected_dev;

    FUNC0(p_aout, name);
    FUNC1(p_aout, AOUT_RESTART_OUTPUT);

    return 0;
}