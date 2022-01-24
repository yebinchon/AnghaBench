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
struct TYPE_4__ {int /*<<< orphan*/  (* Viewport ) (int,int,unsigned int,unsigned int) ;} ;
struct TYPE_5__ {TYPE_1__ vt; } ;
typedef  TYPE_2__ vout_display_opengl_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,unsigned int,unsigned int) ; 

void FUNC1(vout_display_opengl_t *vgl, int x, int y,
                                  unsigned width, unsigned height)
{
    vgl->vt.Viewport(x, y, width, height);
}