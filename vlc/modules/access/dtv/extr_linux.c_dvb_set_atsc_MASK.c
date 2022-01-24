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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  dvb_device_t ;

/* Variables and functions */
 int /*<<< orphan*/  DTV_CLEAR ; 
 int /*<<< orphan*/  DTV_DELIVERY_ATSC ; 
 int /*<<< orphan*/  DTV_DELIVERY_SYSTEM ; 
 int /*<<< orphan*/  DTV_FREQUENCY ; 
 int /*<<< orphan*/  DTV_MODULATION ; 
 int /*<<< orphan*/  SYS_ATSC ; 
 int /*<<< orphan*/  VSB_8 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

int FUNC3 (dvb_device_t *d, uint32_t freq, const char *modstr)
{
    unsigned mod = FUNC1 (modstr, VSB_8);

    if (FUNC0 (d, DTV_DELIVERY_ATSC))
        return -1;
    return FUNC2 (d, 4, DTV_CLEAR, 0, DTV_DELIVERY_SYSTEM, SYS_ATSC,
                          DTV_FREQUENCY, freq, DTV_MODULATION, mod);
}