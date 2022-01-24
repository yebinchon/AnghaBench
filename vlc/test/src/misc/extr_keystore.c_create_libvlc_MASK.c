#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  p_libvlc_int; } ;
typedef  TYPE_1__ libvlc_instance_t ;

/* Variables and functions */
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  VLC_VAR_STRING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (int,char const* const*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static libvlc_instance_t *
FUNC3(int i_vlc_argc, const char *const *ppsz_vlc_argv)
{
    libvlc_instance_t *p_libvlc = FUNC1(i_vlc_argc, ppsz_vlc_argv);
    FUNC0(p_libvlc != NULL);

    int i_ret;
    i_ret = FUNC2(p_libvlc->p_libvlc_int, "test-user", VLC_VAR_STRING);
    FUNC0(i_ret == VLC_SUCCESS);
    i_ret = FUNC2(p_libvlc->p_libvlc_int, "test-pwd", VLC_VAR_STRING);
    FUNC0(i_ret == VLC_SUCCESS);

    return p_libvlc;
}