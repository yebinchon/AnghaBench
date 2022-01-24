#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  end_time; scalar_t__ enterprise_features_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_WARNING ; 
 int /*<<< orphan*/  NOTICE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__ current_license ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int printed_license_expiration_warning ; 
 int /*<<< orphan*/  timestamptz_out ; 

void
FUNC7(void)
{
	if (!FUNC2(current_license.end_time) &&
		current_license.enterprise_features_enabled)
	{
		FUNC3(NOTICE,
				(FUNC4(ERRCODE_WARNING),
				 FUNC5("your Timescale Enterprise License expires on %s",
						FUNC0(
							FUNC1(timestamptz_out, current_license.end_time)))));
	}

	else
	{
		printed_license_expiration_warning = false;
		FUNC6();
	}
}