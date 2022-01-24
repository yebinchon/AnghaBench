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
struct vlc_run_args {int dummy; } ;
typedef  int /*<<< orphan*/  stream_t ;
struct TYPE_3__ {int /*<<< orphan*/  p_libvlc_int; } ;
typedef  TYPE_1__ libvlc_instance_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct vlc_run_args const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,void*,size_t,int) ; 

int FUNC4(libvlc_instance_t *vlc,
                                const struct vlc_run_args *args,
                                const unsigned char *buf, size_t length)
{
    stream_t *s = FUNC3(FUNC0(vlc->p_libvlc_int),
                                       (void *)buf, length, true);
    if (s == NULL)
        FUNC2(stderr, "Error: cannot create input stream\n");

    return FUNC1(args, s);
}