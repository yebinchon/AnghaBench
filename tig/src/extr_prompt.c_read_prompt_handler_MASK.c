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
struct TYPE_2__ {int /*<<< orphan*/  multibytes; } ;
struct key {TYPE_1__ modifiers; } ;
struct input {int dummy; } ;
struct incremental_input {int (* handler ) (struct input*,struct key*) ;scalar_t__ edit_mode; } ;
typedef  enum input_status { ____Placeholder_input_status } input_status ;

/* Variables and functions */
 int INPUT_OK ; 
 int INPUT_SKIP ; 
 int /*<<< orphan*/  FUNC0 (struct key*) ; 
 int FUNC1 (struct input*,struct key*) ; 
 int FUNC2 (struct input*,struct key*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static enum input_status
FUNC4(struct input *input, struct key *key)
{
	struct incremental_input *incremental = (struct incremental_input *) input;

	if (incremental->edit_mode && !key->modifiers.multibytes)
		return FUNC1(input, key);

	if (!FUNC3(FUNC0(key), 8))
		return INPUT_SKIP;

	if (!incremental->handler)
		return INPUT_OK;

	return incremental->handler(input, key);
}