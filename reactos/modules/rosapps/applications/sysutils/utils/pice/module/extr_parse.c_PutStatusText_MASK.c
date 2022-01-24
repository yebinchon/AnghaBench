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
struct TYPE_2__ {scalar_t__ y; } ;
typedef  int /*<<< orphan*/  LPSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 size_t OUTPUT_WINDOW ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,scalar_t__) ; 
 TYPE_1__* wWindow ; 

void FUNC4(LPSTR p)
{
    FUNC1();

	FUNC0(wWindow[OUTPUT_WINDOW].y-1);
	FUNC3(p,1,wWindow[OUTPUT_WINDOW].y-1);

    FUNC2();
}