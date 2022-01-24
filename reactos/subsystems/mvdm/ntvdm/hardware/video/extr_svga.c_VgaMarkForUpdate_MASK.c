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
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_2__ {void* Bottom; void* Top; void* Right; void* Left; } ;
typedef  int /*<<< orphan*/  SHORT ;

/* Variables and functions */
 void* MAXSHORT ; 
 void* MINSHORT ; 
 scalar_t__ NeedsUpdate ; 
 scalar_t__ TRUE ; 
 TYPE_1__ UpdateRectangle ; 
 void* FUNC0 (void*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline VOID FUNC2(SHORT Row, SHORT Column)
{
    /* Check if this is the first time the rectangle is updated */
    if (!NeedsUpdate)
    {
        UpdateRectangle.Left = UpdateRectangle.Top = MAXSHORT;
        UpdateRectangle.Right = UpdateRectangle.Bottom = MINSHORT;
    }

    /* Expand the rectangle to include the point */
    UpdateRectangle.Left = FUNC1(UpdateRectangle.Left, Column);
    UpdateRectangle.Right = FUNC0(UpdateRectangle.Right, Column);
    UpdateRectangle.Top = FUNC1(UpdateRectangle.Top, Row);
    UpdateRectangle.Bottom = FUNC0(UpdateRectangle.Bottom, Row);

    /* Set the update request flag */
    NeedsUpdate = TRUE;
}