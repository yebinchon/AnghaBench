#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* errhint; int /*<<< orphan*/ * versionstr; } ;
typedef  TYPE_1__ VersionResult ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MAX_VERSION_STR_LEN ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TS_VERSION_JSON_FIELD ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  json_object_field_text ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ) ; 

bool
FUNC11(const char *json, VersionResult *result)
{
	int i;
	Datum version = FUNC2(json_object_field_text,
										FUNC0(json),
										FUNC3(FUNC5(TS_VERSION_JSON_FIELD)));

	FUNC8(result, 0, sizeof(VersionResult));

	result->versionstr = FUNC10(FUNC1(version));

	if (result->versionstr == NULL)
	{
		result->errhint = "no version string in response";
		return false;
	}

	if (FUNC9(result->versionstr) > MAX_VERSION_STR_LEN)
	{
		result->errhint = "version string is too long";
		return false;
	}

	for (i = 0; i < FUNC9(result->versionstr); i++)
	{
		if (!FUNC6(result->versionstr[i]) && !FUNC7(result->versionstr[i]) &&
			!FUNC4(result->versionstr[i]))
		{
			result->errhint = "version string has invalid characters";
			return false;
		}
	}

	return true;
}