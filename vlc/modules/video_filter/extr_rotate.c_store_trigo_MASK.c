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
struct TYPE_4__ {int /*<<< orphan*/  u; void* cos; void* sin; } ;
typedef  TYPE_1__ sincos_t ;
struct TYPE_5__ {int /*<<< orphan*/  sincos; } ;
typedef  TYPE_2__ filter_sys_t ;

/* Variables and functions */
 int M_PI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 float FUNC1 (float) ; 
 void* FUNC2 (float) ; 
 float FUNC3 (float) ; 

__attribute__((used)) static void FUNC4( filter_sys_t *sys, float f_angle )
{
    sincos_t sincos;

    f_angle *= (float)(M_PI / 180.); /* degrees -> radians */

    sincos.sin = FUNC2(FUNC3(f_angle) * 4096.f);
    sincos.cos = FUNC2(FUNC1(f_angle) * 4096.f);
    FUNC0(&sys->sincos, sincos.u);
}