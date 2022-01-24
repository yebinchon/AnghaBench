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
typedef  int /*<<< orphan*/  JsonbValue ;
typedef  int /*<<< orphan*/  JsonbParseState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WJB_KEY ; 
 int /*<<< orphan*/  WJB_VALUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(JsonbParseState *state, JsonbValue *key, JsonbValue *value)
{
	FUNC0(state != NULL);
	FUNC0(key != NULL);
	if (value == NULL)
		return;

	FUNC1(&state, WJB_KEY, key);
	FUNC1(&state, WJB_VALUE, value);
}