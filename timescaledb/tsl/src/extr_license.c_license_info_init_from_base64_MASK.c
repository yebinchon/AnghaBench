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
typedef  int /*<<< orphan*/  LicenseInfo ;
typedef  int /*<<< orphan*/  Jsonb ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 char* FUNC7 (char*) ; 
 int /*<<< orphan*/  jsonb_in ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC9(char *license_key, LicenseInfo *out)
{
	char *expanded = FUNC7(license_key);

	if (expanded == NULL)
		return false;

	FUNC6();
	{
		Datum json_key = FUNC2(jsonb_in, FUNC0(expanded));

		FUNC8((Jsonb *) FUNC1(json_key), out);
	}
	FUNC4();
	{
#ifdef TS_DEBUG
		EmitErrorReport();
#endif
		return false;
	}
	FUNC5();
	return true;
}