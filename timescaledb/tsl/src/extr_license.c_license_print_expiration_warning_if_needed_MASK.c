#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TimestampTz ;
struct TYPE_5__ {int /*<<< orphan*/  end_time; } ;
struct TYPE_4__ {int day; } ;
typedef  TYPE_1__ Interval ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERRCODE_WARNING ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WARNING ; 
 TYPE_2__ current_license ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 scalar_t__ FUNC11 () ; 
 int printed_license_expiration_warning ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  timestamptz_mi_interval ; 
 int /*<<< orphan*/  timestamptz_out ; 

void
FUNC13(void)
{
	if (printed_license_expiration_warning)
		return;

	printed_license_expiration_warning = true;

	if (FUNC11())
		FUNC7(WARNING,
				(FUNC8(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC10("Timescale License expired"),
				 FUNC9("Your license expired on %s. Renew your license to continue using "
						 "enterprise features.",
						 FUNC0(
							 FUNC2(timestamptz_out,
												 FUNC6(current_license.end_time))))));
	else
	{
		Interval week = {
			.day = 7,
		};
		TimestampTz warn_after =
			FUNC1(FUNC3(timestamptz_mi_interval,
													FUNC6(current_license.end_time),
													FUNC5(&week)));

		if (FUNC12(FUNC4(), warn_after) >= 0)
			FUNC7(WARNING,
					(FUNC8(ERRCODE_WARNING),
					 FUNC10("your Timescale Enterprise License expires on %s",
							FUNC0(FUNC2(timestamptz_out,
																FUNC6(
																	current_license.end_time))))));
	}
}