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
struct TYPE_2__ {int /*<<< orphan*/  line_number; int /*<<< orphan*/  input_name; scalar_t__ temp_name; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  YY_CURRENT_BUFFER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 TYPE_1__* import_stack ; 
 int import_stack_ptr ; 
 int /*<<< orphan*/  input_name ; 
 int /*<<< orphan*/  line_number ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  parser_in ; 
 scalar_t__ temp_name ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

void FUNC5(void)
{
	int ptr = import_stack_ptr-1;

	FUNC0(parser_in);
	FUNC2(YY_CURRENT_BUFFER );
	FUNC3(import_stack[ptr].state );
	if (temp_name) {
		FUNC4(temp_name);
		FUNC1(temp_name);
	}
	temp_name = import_stack[ptr].temp_name;
	input_name = import_stack[ptr].input_name;
	line_number = import_stack[ptr].line_number;
	import_stack_ptr--;
}