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
typedef  int /*<<< orphan*/  vlc_decoder_device ;
struct TYPE_4__ {TYPE_1__* instance; } ;
typedef  TYPE_2__ picture_sys_t ;
typedef  int /*<<< orphan*/  VADisplay ;
struct TYPE_3__ {int /*<<< orphan*/  dec_device; int /*<<< orphan*/  va_dpy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 

vlc_decoder_device *
FUNC2(void *_sys, VADisplay *dpy)
{
    picture_sys_t *sys = (picture_sys_t *)_sys;
    FUNC0(sys->instance != NULL);
    *dpy = sys->instance->va_dpy;
    return FUNC1(sys->instance->dec_device);
}