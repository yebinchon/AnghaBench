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

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ts_guc_license_key ; 

__attribute__((used)) static void
FUNC4(void)
{
	FUNC0(ERROR,
			(FUNC1(ERRCODE_FEATURE_NOT_SUPPORTED),
			 FUNC3("functionality not supported under the current license \"%s\", license",
					ts_guc_license_key),
			 FUNC2("Request a trial license to try this feature for free or contact us for more "
					 "information at https://www.timescale.com/pricing")));
}