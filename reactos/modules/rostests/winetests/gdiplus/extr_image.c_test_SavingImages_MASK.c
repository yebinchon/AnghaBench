#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
typedef  scalar_t__ UINT ;
struct TYPE_5__ {int /*<<< orphan*/  Clsid; } ;
typedef  double REAL ;
typedef  TYPE_1__ ImageCodecInfo ;
typedef  scalar_t__ GpStatus ;
typedef  int /*<<< orphan*/  GpImage ;
typedef  int /*<<< orphan*/  GpBitmap ;
typedef  char CHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 TYPE_1__* FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (double const,double const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,double*,double*) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__,TYPE_1__*) ; 
 scalar_t__ FUNC7 (scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC8 (char const*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ InvalidParameter ; 
 scalar_t__ Ok ; 
 int /*<<< orphan*/  PixelFormat24bppRGB ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (double const,double) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC13(void)
{
    GpStatus stat;
    GpBitmap *bm;
    UINT n;
    UINT s;
    const REAL WIDTH = 10.0, HEIGHT = 20.0;
    REAL w, h;
    ImageCodecInfo *codecs;
    static const CHAR filenameA[] = "a.bmp";
    static const WCHAR filename[] = { 'a','.','b','m','p',0 };

    codecs = NULL;

    stat = FUNC9(0, 0, 0, 0);
    FUNC10(InvalidParameter, stat);

    bm = NULL;
    stat = FUNC2(WIDTH, HEIGHT, 0, PixelFormat24bppRGB, NULL, &bm);
    FUNC10(Ok, stat);
    if (!bm)
        return;

    /* invalid params */
    stat = FUNC9((GpImage*)bm, 0, 0, 0);
    FUNC10(InvalidParameter, stat);

    stat = FUNC9((GpImage*)bm, filename, 0, 0);
    FUNC10(InvalidParameter, stat);

    /* encoder tests should succeed -- already tested */
    stat = FUNC7(&n, &s);
    if (stat != Ok || n == 0) goto cleanup;

    codecs = FUNC1(s);
    if (!codecs) goto cleanup;

    stat = FUNC6(n, s, codecs);
    if (stat != Ok) goto cleanup;

    stat = FUNC9((GpImage*)bm, filename, &codecs[0].Clsid, 0);
    FUNC10(Ok, stat);

    FUNC3((GpImage*)bm);
    bm = 0;

    /* re-load and check image stats */
    stat = FUNC8(filename, (GpImage**)&bm);
    FUNC10(Ok, stat);
    if (stat != Ok) goto cleanup;

    stat = FUNC5((GpImage*)bm, &w, &h);
    if (stat != Ok) goto cleanup;

    FUNC11(WIDTH, w);
    FUNC11(HEIGHT, h);

 cleanup:
    FUNC4(codecs);
    if (bm)
        FUNC3((GpImage*)bm);
    FUNC12(FUNC0(filenameA), "Delete failed.\n");
}