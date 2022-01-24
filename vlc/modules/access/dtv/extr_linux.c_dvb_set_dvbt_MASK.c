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
 int /*<<< orphan*/  DTV_BANDWIDTH_HZ ; 
 int /*<<< orphan*/  DTV_CLEAR ; 
 int /*<<< orphan*/  DTV_CODE_RATE_HP ; 
 int /*<<< orphan*/  DTV_CODE_RATE_LP ; 
 int /*<<< orphan*/  DTV_DELIVERY_DVB_T ; 
 int /*<<< orphan*/  DTV_DELIVERY_SYSTEM ; 
 int /*<<< orphan*/  DTV_FREQUENCY ; 
 int /*<<< orphan*/  DTV_GUARD_INTERVAL ; 
 int /*<<< orphan*/  DTV_HIERARCHY ; 
 int /*<<< orphan*/  DTV_MODULATION ; 
 int /*<<< orphan*/  DTV_TRANSMISSION_MODE ; 
 int /*<<< orphan*/  QAM_AUTO ; 
 int /*<<< orphan*/  SYS_DVBT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC8 (dvb_device_t *d, uint32_t freq, const char *modstr,
                  uint32_t fec_hp, uint32_t fec_lp, uint32_t bandwidth,
                  int transmit_mode, uint32_t guard, int hierarchy)
{
    uint32_t mod = FUNC5 (modstr, QAM_AUTO);
    fec_hp = FUNC2 (fec_hp);
    fec_lp = FUNC2 (fec_lp);
    bandwidth = FUNC1 (bandwidth);
    transmit_mode = FUNC6 (transmit_mode);
    guard = FUNC3 (guard);
    hierarchy = FUNC4 (hierarchy);

    if (FUNC0 (d, DTV_DELIVERY_DVB_T))
        return -1;
    return FUNC7 (d, 10, DTV_CLEAR, 0, DTV_DELIVERY_SYSTEM, SYS_DVBT,
                          DTV_FREQUENCY, freq, DTV_MODULATION, mod,
                          DTV_CODE_RATE_HP, fec_hp, DTV_CODE_RATE_LP, fec_lp,
                          DTV_BANDWIDTH_HZ, bandwidth,
                          DTV_TRANSMISSION_MODE, transmit_mode,
                          DTV_GUARD_INTERVAL, guard,
                          DTV_HIERARCHY, hierarchy);
}