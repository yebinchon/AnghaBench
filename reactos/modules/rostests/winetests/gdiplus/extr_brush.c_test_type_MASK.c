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
typedef  int /*<<< orphan*/  GpStatus ;
typedef  int /*<<< orphan*/  GpSolidFill ;
typedef  int /*<<< orphan*/  GpBrushType ;
typedef  int /*<<< orphan*/  GpBrush ;
typedef  int /*<<< orphan*/  ARGB ;

/* Variables and functions */
 int /*<<< orphan*/  BrushTypeSolidColor ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  Ok ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void)
{
    GpStatus status;
    GpBrushType bt;
    GpSolidFill *brush = NULL;

    FUNC0((ARGB)0xdeadbeef, &brush);

    status = FUNC2((GpBrush*)brush, &bt);
    FUNC3(Ok, status);
    FUNC3(BrushTypeSolidColor, bt);

    FUNC1((GpBrush*) brush);
}