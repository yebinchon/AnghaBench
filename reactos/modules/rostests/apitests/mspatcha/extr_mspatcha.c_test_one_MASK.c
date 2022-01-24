#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  output_signature; int /*<<< orphan*/  output; int /*<<< orphan*/  name; int /*<<< orphan*/  input_signature; int /*<<< orphan*/  input; } ;
typedef  TYPE_1__ patch_data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC3(patch_data* current)
{
    FUNC2(current->name, "input", &current->input, current->input_signature);
    FUNC2(current->name, "output", &current->output, current->output_signature);
    FUNC0(current);
    FUNC1(current);
}