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
typedef  int /*<<< orphan*/  isdbt_layer_t ;
typedef  int /*<<< orphan*/  dvb_device_t ;

/* Variables and functions */
 int /*<<< orphan*/  DTV_BANDWIDTH_HZ ; 
 int /*<<< orphan*/  DTV_CLEAR ; 
 int /*<<< orphan*/  DTV_DELIVERY_ISDB_T ; 
 int /*<<< orphan*/  DTV_DELIVERY_SYSTEM ; 
 int /*<<< orphan*/  DTV_FREQUENCY ; 
 int /*<<< orphan*/  DTV_GUARD_INTERVAL ; 
 int /*<<< orphan*/  DTV_ISDBT_LAYER_ENABLED ; 
 int /*<<< orphan*/  SYS_ISDBT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC6 (dvb_device_t *d, uint32_t freq, uint32_t bandwidth,
                   int transmit_mode, uint32_t guard,
                   const isdbt_layer_t layers[3])
{
    bandwidth = FUNC1 (bandwidth);
    transmit_mode = FUNC3 (transmit_mode);
    guard = FUNC2 (guard);

    if (FUNC0 (d, DTV_DELIVERY_ISDB_T))
        return -1;
    if (FUNC5 (d, 6, DTV_CLEAR, 0, DTV_DELIVERY_SYSTEM, SYS_ISDBT,
                       DTV_FREQUENCY, freq, DTV_BANDWIDTH_HZ, bandwidth,
                       DTV_GUARD_INTERVAL, guard,
                       DTV_ISDBT_LAYER_ENABLED, 0x7 /* all layers enabled */))
        return -1;
    for (unsigned i = 0; i < 3; i++)
        if (FUNC4 (d, i, layers + i))
            return -1;
    return 0;
}