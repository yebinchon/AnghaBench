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
typedef  int /*<<< orphan*/  GpPen ;
typedef  int /*<<< orphan*/  ARGB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,float,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  InvalidParameter ; 
 int /*<<< orphan*/  Ok ; 
 int /*<<< orphan*/  UnitPixel ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC4(void)
{
    GpStatus status;
    GpPen *pen = NULL;

    status = FUNC0((ARGB)0xffff00ff, 10.0f, UnitPixel, NULL);
    FUNC2(InvalidParameter, status);
    FUNC3(pen == NULL, "Expected pen to be NULL\n");

    status = FUNC0((ARGB)0xffff00ff, 10.0f, UnitPixel, &pen);
    FUNC2(Ok, status);
    FUNC3(pen != NULL, "Expected pen to be initialized\n");

    status = FUNC1(NULL);
    FUNC2(InvalidParameter, status);

    status = FUNC1(pen);
    FUNC2(Ok, status);
}