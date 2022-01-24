#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  versionstr; int /*<<< orphan*/  errhint; } ;
typedef  TYPE_1__ VersionResult ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXTENSION_NAME ; 
 int /*<<< orphan*/  LOG ; 
 int /*<<< orphan*/  NOTICE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TIMESCALEDB_VERSION_MOD ; 
 char* TS_IS_UPTODATE_JSON_FIELD ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  json_object_field_text ; 
 int /*<<< orphan*/  texteq ; 
 int /*<<< orphan*/  FUNC9 (char const*,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC10(const char *json)
{
	VersionResult result;
	bool is_uptodate =
		FUNC1(FUNC2(texteq,
										 FUNC2(json_object_field_text,
															 FUNC0(json),
															 FUNC3(FUNC4(
																 TS_IS_UPTODATE_JSON_FIELD))),
										 FUNC3(FUNC4("true"))));

	if (is_uptodate)
		FUNC5(NOTICE, "the \"%s\" extension is up-to-date", EXTENSION_NAME);
	else
	{
		if (!FUNC9(json, &result))
		{
			FUNC5(WARNING, "server did not return a valid TimescaleDB version: %s", result.errhint);
			return;
		}

		FUNC6(LOG,
				(FUNC8("the \"%s\" extension is not up-to-date", EXTENSION_NAME),
				 FUNC7("The most up-to-date version is %s, the installed version is %s",
						 result.versionstr,
						 TIMESCALEDB_VERSION_MOD)));
	}
}