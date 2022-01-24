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
struct TYPE_2__ {int /*<<< orphan*/  (* add_tsl_license_info_telemetry ) (int /*<<< orphan*/ *) ;} ;
typedef  int /*<<< orphan*/  JsonbParseState ;

/* Variables and functions */
 int /*<<< orphan*/  REQ_LICENSE_EDITION ; 
 int /*<<< orphan*/  REQ_LICENSE_EDITION_APACHE ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  WJB_BEGIN_OBJECT ; 
 int /*<<< orphan*/  WJB_END_OBJECT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* ts_cm_functions ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(JsonbParseState *state)
{
	FUNC1(&state, WJB_BEGIN_OBJECT, NULL);

	if (FUNC0())
		FUNC3(state, REQ_LICENSE_EDITION, REQ_LICENSE_EDITION_APACHE);
	else
		ts_cm_functions->add_tsl_license_info_telemetry(state);

	FUNC1(&state, WJB_END_OBJECT, NULL);
}