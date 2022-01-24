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
typedef  int /*<<< orphan*/  vlc_vdp_video_field_t ;
typedef  int /*<<< orphan*/  vlc_va_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC1 (int) ; 
 unsigned int VOUT_OUTMEM_SLEEP ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 

__attribute__((used)) static vlc_vdp_video_field_t *FUNC3(vlc_va_sys_t *sys)
{
    vlc_vdp_video_field_t *field;
    unsigned tries = (FUNC1(1) + VOUT_OUTMEM_SLEEP) / VOUT_OUTMEM_SLEEP;

    while ((field = FUNC0(sys)) == NULL)
    {
        if (--tries == 0)
            return NULL;
        /* Pool empty. Wait for some time as in src/input/decoder.c.
         * XXX: Both this and the core should use a semaphore or a CV. */
        FUNC2(VOUT_OUTMEM_SLEEP);
    }

    return field;
}