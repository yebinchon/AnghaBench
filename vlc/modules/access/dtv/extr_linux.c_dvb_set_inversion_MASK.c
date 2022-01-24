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
typedef  int /*<<< orphan*/  dvb_device_t ;

/* Variables and functions */
 int /*<<< orphan*/  DTV_INVERSION ; 
 int INVERSION_AUTO ; 
 int INVERSION_OFF ; 
 int INVERSION_ON ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

int FUNC1 (dvb_device_t *d, int v)
{
    switch (v)
    {
        case 0:  v = INVERSION_OFF;  break;
        case 1:  v = INVERSION_ON;   break;
        default: v = INVERSION_AUTO; break;
    }
    return FUNC0 (d, DTV_INVERSION, v);
}