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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_3__ {char** String; int /*<<< orphan*/  Max; scalar_t__ Index; } ;
typedef  TYPE_1__ StrArray ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

void FUNC2(StrArray* arr, uint32_t initial_size)
{
	if (arr == NULL) return;
	arr->Max = initial_size; arr->Index = 0;
	arr->String = (char**)FUNC0(arr->Max, sizeof(char*));
	if (arr->String == NULL)
		FUNC1("Could not allocate string array\n");
}