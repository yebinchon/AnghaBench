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
typedef  int UINT ;
typedef  int GpStatus ;
typedef  int /*<<< orphan*/  GpImage ;
typedef  int /*<<< orphan*/  GpBitmap ;

/* Variables and functions */
 int FUNC0 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int*) ; 
 int InvalidParameter ; 
 int Ok ; 
 int /*<<< orphan*/  PixelFormat32bppRGB ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static void FUNC6(void)
{
    GpStatus stat;
    GpImage *bitmap1, *bitmap2;
    UINT width, height;

    stat = FUNC3(NULL, 0, 0, &bitmap2, NULL, NULL);
    FUNC5(InvalidParameter, stat);

    stat = FUNC0(128, 128, 0, PixelFormat32bppRGB, NULL, (GpBitmap**)&bitmap1);
    FUNC5(Ok, stat);

    stat = FUNC3(bitmap1, 0, 0, NULL, NULL, NULL);
    FUNC5(InvalidParameter, stat);

    stat = FUNC3(bitmap1, 0, 0, &bitmap2, NULL, NULL);
    FUNC5(Ok, stat);

    if (stat == Ok)
    {
        stat = FUNC4(bitmap2, &width);
        FUNC5(Ok, stat);
        FUNC5(120, width);

        stat = FUNC2(bitmap2, &height);
        FUNC5(Ok, stat);
        FUNC5(120, height);

        FUNC1(bitmap2);
    }

    FUNC1(bitmap1);


    stat = FUNC0(64, 128, 0, PixelFormat32bppRGB, NULL, (GpBitmap**)&bitmap1);
    FUNC5(Ok, stat);

    stat = FUNC3(bitmap1, 32, 32, &bitmap2, NULL, NULL);
    FUNC5(Ok, stat);

    if (stat == Ok)
    {
        stat = FUNC4(bitmap2, &width);
        FUNC5(Ok, stat);
        FUNC5(32, width);

        stat = FUNC2(bitmap2, &height);
        FUNC5(Ok, stat);
        FUNC5(32, height);

        FUNC1(bitmap2);
    }

    stat = FUNC3(bitmap1, 0, 0, &bitmap2, NULL, NULL);
    FUNC5(Ok, stat);

    if (stat == Ok)
    {
        stat = FUNC4(bitmap2, &width);
        FUNC5(Ok, stat);
        FUNC5(120, width);

        stat = FUNC2(bitmap2, &height);
        FUNC5(Ok, stat);
        FUNC5(120, height);

        FUNC1(bitmap2);
    }

    FUNC1(bitmap1);
}