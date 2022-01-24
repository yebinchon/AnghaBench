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
typedef  double REAL ;
typedef  int /*<<< orphan*/  GpStatus ;
typedef  int /*<<< orphan*/  GpImage ;
typedef  int /*<<< orphan*/  GpBitmap ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (double const,double const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,double*,double*) ; 
 int /*<<< orphan*/  InvalidParameter ; 
 int /*<<< orphan*/  Ok ; 
 int /*<<< orphan*/  PixelFormat24bppRGB ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (double const,double) ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 

__attribute__((used)) static void FUNC6(void)
{
    GpBitmap *bm;
    GpStatus stat;
    const REAL WIDTH = 10.0, HEIGHT = 20.0;
    REAL w,h;

    bm = (GpBitmap*)0xdeadbeef;
    stat = FUNC0(WIDTH, HEIGHT, 0, PixelFormat24bppRGB,NULL, &bm);
    FUNC3(Ok,stat);
    FUNC5((GpBitmap*)0xdeadbeef != bm, "Expected bitmap to not be 0xdeadbeef\n");
    FUNC5(NULL != bm, "Expected bitmap to not be NULL\n");

    stat = FUNC2(NULL,&w,&h);
    FUNC3(InvalidParameter, stat);

    stat = FUNC2((GpImage*)bm,NULL,&h);
    FUNC3(InvalidParameter, stat);

    stat = FUNC2((GpImage*)bm,&w,NULL);
    FUNC3(InvalidParameter, stat);

    w = -1;
    h = -1;
    stat = FUNC2((GpImage*)bm,&w,&h);
    FUNC3(Ok, stat);
    FUNC4(WIDTH,  w);
    FUNC4(HEIGHT, h);
    FUNC1((GpImage*)bm);
}