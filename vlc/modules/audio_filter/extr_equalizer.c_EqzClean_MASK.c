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
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_6__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ filter_t ;
struct TYPE_7__ {int /*<<< orphan*/  f_amp; int /*<<< orphan*/  f_gamma; int /*<<< orphan*/  f_beta; int /*<<< orphan*/  f_alpha; } ;
typedef  TYPE_2__ filter_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  BandsCallback ; 
 int /*<<< orphan*/  PreampCallback ; 
 int /*<<< orphan*/  PresetCallback ; 
 int /*<<< orphan*/  TwoPassCallback ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC3( filter_t *p_filter )
{
    filter_sys_t *p_sys = p_filter->p_sys;
    vlc_object_t *p_aout = FUNC2(p_filter);

    FUNC1( p_aout, "equalizer-bands", BandsCallback, p_sys );
    FUNC1( p_aout, "equalizer-preset", PresetCallback, p_sys );
    FUNC1( p_aout, "equalizer-preamp", PreampCallback, p_sys );
    FUNC1( p_aout, "equalizer-2pass", TwoPassCallback, p_sys );

    FUNC0( p_sys->f_alpha );
    FUNC0( p_sys->f_beta );
    FUNC0( p_sys->f_gamma );

    FUNC0( p_sys->f_amp );
}