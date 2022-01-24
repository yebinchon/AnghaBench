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
struct TYPE_3__ {int enterprise_features_enabled; int /*<<< orphan*/  end_time; int /*<<< orphan*/  start_time; int /*<<< orphan*/  kind; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ LicenseInfo ;
typedef  int /*<<< orphan*/  Jsonb ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(Jsonb *json_license, LicenseInfo *out)
{
	char *id_str = FUNC3(json_license);

	if (id_str == NULL)
		FUNC1(ERROR, "missing id in license key");
	FUNC0(out->id, id_str, sizeof(out->id));
	FUNC0(out->kind, FUNC4(json_license), sizeof(out->kind));
	out->start_time = FUNC5(json_license);
	out->end_time = FUNC2(json_license);
	out->enterprise_features_enabled = true;
}