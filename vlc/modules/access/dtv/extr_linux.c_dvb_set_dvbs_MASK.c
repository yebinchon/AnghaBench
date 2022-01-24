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
typedef  int uint64_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  dvb_device_t ;

/* Variables and functions */
 int /*<<< orphan*/  DTV_CLEAR ; 
 int /*<<< orphan*/  DTV_DELIVERY_DVB_S ; 
 int /*<<< orphan*/  DTV_DELIVERY_SYSTEM ; 
 int /*<<< orphan*/  DTV_FREQUENCY ; 
 int /*<<< orphan*/  DTV_INNER_FEC ; 
 int /*<<< orphan*/  DTV_SYMBOL_RATE ; 
 int /*<<< orphan*/  SYS_DVBS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 

int FUNC3 (dvb_device_t *d, uint64_t freq_Hz,
                  uint32_t srate, uint32_t fec)
{
    uint32_t freq = freq_Hz / 1000;
    fec = FUNC1 (fec);

    if (FUNC0 (d, DTV_DELIVERY_DVB_S))
        return -1;
    return FUNC2 (d, 5, DTV_CLEAR, 0, DTV_DELIVERY_SYSTEM, SYS_DVBS,
                          DTV_FREQUENCY, freq, DTV_SYMBOL_RATE, srate,
                          DTV_INNER_FEC, fec);
}