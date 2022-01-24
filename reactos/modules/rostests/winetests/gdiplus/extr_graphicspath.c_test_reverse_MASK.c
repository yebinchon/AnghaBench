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
struct TYPE_3__ {int X; double Y; } ;
typedef  int REAL ;
typedef  int INT ;
typedef  int /*<<< orphan*/  GpStatus ;
typedef  TYPE_1__ GpPointF ;
typedef  int /*<<< orphan*/  GpPath ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FillModeAlternate ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  InvalidParameter ; 
 int /*<<< orphan*/  Ok ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  reverse_path ; 

__attribute__((used)) static void FUNC8(void)
{
    GpStatus status;
    GpPath *path;
    GpPointF pts[7];
    INT i;

    for(i = 0; i < 7; i++){
        pts[i].X = i * 5.0 * (REAL)(i % 2);
        pts[i].Y = 50.0 - i * 5.0;
    }

    FUNC3(FillModeAlternate, &path);

    /* NULL argument */
    status = FUNC5(NULL);
    FUNC6(InvalidParameter, status);

    /* empty path */
    status = FUNC5(path);
    FUNC6(Ok, status);

    FUNC1(path, pts, 4);
    FUNC2(path);
    FUNC1(path, &(pts[4]), 3);

    status = FUNC5(path);
    FUNC6(Ok, status);
    FUNC7(path, reverse_path, FUNC0(reverse_path), FALSE);

    FUNC4(path);
}