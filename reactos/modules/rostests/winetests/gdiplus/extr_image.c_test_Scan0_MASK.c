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
typedef  scalar_t__ GpStatus ;
typedef  int /*<<< orphan*/  GpImage ;
typedef  int /*<<< orphan*/  GpBitmap ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ InvalidParameter ; 
 scalar_t__ Ok ; 
 int /*<<< orphan*/  PixelFormat24bppRGB ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 

__attribute__((used)) static void FUNC4(void)
{
    GpBitmap *bm;
    GpStatus stat;
    BYTE buff[360];

    bm = NULL;
    stat = FUNC0(10, 10, 10, PixelFormat24bppRGB, NULL, &bm);
    FUNC2(Ok, stat);
    FUNC3(NULL != bm, "Expected bitmap to be initialized\n");
    if (stat == Ok)
        FUNC1((GpImage*)bm);

    bm = (GpBitmap*)0xdeadbeef;
    stat = FUNC0(10, -10, 10, PixelFormat24bppRGB, NULL, &bm);
    FUNC2(InvalidParameter, stat);
    FUNC3( !bm, "expected null bitmap\n" );

    bm = (GpBitmap*)0xdeadbeef;
    stat = FUNC0(-10, 10, 10, PixelFormat24bppRGB, NULL, &bm);
    FUNC2(InvalidParameter, stat);
    FUNC3( !bm, "expected null bitmap\n" );

    bm = (GpBitmap*)0xdeadbeef;
    stat = FUNC0(10, 0, 10, PixelFormat24bppRGB, NULL, &bm);
    FUNC2(InvalidParameter, stat);
    FUNC3( !bm, "expected null bitmap\n" );

    bm = NULL;
    stat = FUNC0(10, 10, 12, PixelFormat24bppRGB, buff, &bm);
    FUNC2(Ok, stat);
    FUNC3(NULL != bm, "Expected bitmap to be initialized\n");
    if (stat == Ok)
        FUNC1((GpImage*)bm);

    bm = (GpBitmap*) 0xdeadbeef;
    stat = FUNC0(10, 10, 10, PixelFormat24bppRGB, buff, &bm);
    FUNC2(InvalidParameter, stat);
    FUNC3( !bm, "expected null bitmap\n" );

    bm = (GpBitmap*)0xdeadbeef;
    stat = FUNC0(10, 10, 0, PixelFormat24bppRGB, buff, &bm);
    FUNC2(InvalidParameter, stat);
    FUNC3( bm == (GpBitmap*)0xdeadbeef, "expected deadbeef bitmap\n" );

    bm = NULL;
    stat = FUNC0(10, 10, -8, PixelFormat24bppRGB, buff, &bm);
    FUNC2(Ok, stat);
    FUNC3(NULL != bm, "Expected bitmap to be initialized\n");
    if (stat == Ok)
        FUNC1((GpImage*)bm);

    bm = (GpBitmap*)0xdeadbeef;
    stat = FUNC0(10, 10, -10, PixelFormat24bppRGB, buff, &bm);
    FUNC2(InvalidParameter, stat);
    FUNC3( !bm, "expected null bitmap\n" );
}