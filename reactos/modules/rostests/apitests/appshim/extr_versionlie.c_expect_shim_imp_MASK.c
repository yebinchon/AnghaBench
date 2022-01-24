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
struct TYPE_3__ {int /*<<< orphan*/  FunctionName; int /*<<< orphan*/  LibraryName; } ;
typedef  TYPE_1__* PHOOKAPI ;
typedef  int /*<<< orphan*/  PCSTR ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(PHOOKAPI hook, PCSTR library, PCSTR function, PCSTR shim, int* same)
{
    int lib = FUNC0(library, hook->LibraryName);
    int fn = FUNC0(function, hook->FunctionName);
    FUNC1(lib == 0, "Expected LibrarayName to be %s, was: %s for %s\n", library, hook->LibraryName, shim);
    FUNC1(fn == 0, "Expected FunctionName to be %s, was: %s for %s\n", function, hook->FunctionName, shim);
    *same = (lib == 0 && fn == 0);
}