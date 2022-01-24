#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_5__ {scalar_t__ ShowCount; int /*<<< orphan*/  Position; } ;
struct TYPE_4__ {int X; int Y; } ;
typedef  int /*<<< orphan*/ * PCOORD ;
typedef  TYPE_1__ COORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_3__ DriverState ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline VOID FUNC5(PCOORD NewPosition)
{
    COORD Resolution = FUNC3();

    /* Check for text mode */
    if (!FUNC4(NULL, NULL))
    {
        Resolution.X *= 8;
        Resolution.Y *= 8;
    }

    if (DriverState.ShowCount > 0) FUNC1();
    DriverState.Position = *NewPosition;
    if (DriverState.ShowCount > 0) FUNC2();

    /* Call the mouse handlers */
    FUNC0(0x0001); // We use MS MOUSE v1.0+ format
}