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
typedef  scalar_t__ UINT32 ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ ACPI_STATE_S5 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 

ACPI_STATUS
FUNC10 (
	UINT32			state)
{
	ACPI_STATUS status;

	/* only support S1 and S5 on kernel 2.4 */
	//if (state != ACPI_STATE_S1 && state != ACPI_STATE_S4
	//    && state != ACPI_STATE_S5)
	//	return AE_ERROR;


	//if (ACPI_STATE_S4 == state) {
	//	/* For s4bios, we need a wakeup address. */
	//	if (1 == AcpiGbl_FACS->S4bios_f &&
	//	    0 != AcpiGbl_FADT->smi_cmd) {
	//		if (!acpi_wakeup_address)
	//			return AE_ERROR;
	//		AcpiSetFirmwareWakingVector((acpi_physical_address) acpi_wakeup_address);
	//	} else
	//		/* We don't support S4 under 2.4.  Give up */
	//		return AE_ERROR;
	//}
	FUNC3(state);

	status = FUNC2(state);
	if (!FUNC1(status) && state != ACPI_STATE_S5)
		return status;

	/* disable interrupts and flush caches */
	FUNC6();
	FUNC0();

	/* perform OS-specific sleep actions */
	status = FUNC9(state);

	/* Even if we failed to go to sleep, all of the devices are in an suspended
	 * mode. So, we run these unconditionally to make sure we have a usable system
	 * no matter what.
	 */
	FUNC4(state);
	FUNC8(state);

	/* make sure interrupts are enabled */
	FUNC7();

	/* reset firmware waking vector */
	FUNC5(0, 0);

	return status;
}