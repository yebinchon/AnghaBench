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
struct vm {int dummy; } ;
struct vatpic {struct vm* vm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vatpic*) ; 
 int /*<<< orphan*/  FUNC1 (struct vatpic*) ; 
 int /*<<< orphan*/  FUNC2 (struct vatpic*,int) ; 
 struct vatpic* FUNC3 (int) ; 

struct vatpic *
FUNC4(struct vm *vm)
{
	struct vatpic *vatpic;

	vatpic = FUNC3(sizeof(struct vatpic));
	FUNC1(vatpic);
	FUNC2(vatpic, sizeof(struct vatpic));
	vatpic->vm = vm;

	FUNC0(vatpic);

	return (vatpic);
}