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
typedef  int /*<<< orphan*/  VOID ;

/* Variables and functions */
 int /*<<< orphan*/  COLOR_3DDKSHADOW ; 
 int /*<<< orphan*/  COLOR_3DHIGHLIGHT ; 
 int /*<<< orphan*/  COLOR_3DSHADOW ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 void* color_3ddkshadow ; 
 void* color_3dhighlight ; 
 void* color_3dshadow ; 

__attribute__((used)) static VOID FUNC1(void)
{
    color_3ddkshadow  = FUNC0(COLOR_3DDKSHADOW);
    color_3dshadow    = FUNC0(COLOR_3DSHADOW);
    color_3dhighlight = FUNC0(COLOR_3DHIGHLIGHT);
}