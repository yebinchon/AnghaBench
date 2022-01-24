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
typedef  int INT ;
typedef  int /*<<< orphan*/ * HIMAGELIST ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  ILC_COLOR16 ; 
 int /*<<< orphan*/  ILC_COLORDDB ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/ * FUNC1 (int,int,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int*,int*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC6(void)
{
    HIMAGELIST himl;
    INT cx, cy;
    BOOL rc;
    INT ret;

    /* list with zero or negative image dimensions */
    himl = FUNC1(0, 0, ILC_COLOR16, 0, 3);
    FUNC0(himl == NULL, "got %p\n", himl);

    himl = FUNC1(0, 16, ILC_COLOR16, 0, 3);
    FUNC0(himl == NULL, "got %p\n", himl);

    himl = FUNC1(16, 0, ILC_COLOR16, 0, 3);
    FUNC0(himl == NULL, "got %p\n", himl);

    himl = FUNC1(16, -1, ILC_COLOR16, 0, 3);
    FUNC0(himl == NULL, "got %p\n", himl);

    himl = FUNC1(-1, 16, ILC_COLOR16, 0, 3);
    FUNC0(himl == NULL, "got %p\n", himl);

    rc = FUNC2((HIMAGELIST)0xdeadbeef);
    FUNC0(rc == FALSE, "ImageList_Destroy(0xdeadbeef) should fail and not crash\n");

    /* DDB image lists */
    himl = FUNC1(0, 14, ILC_COLORDDB, 4, 4);
    FUNC0(himl != NULL, "got %p\n", himl);

    FUNC3(himl, &cx, &cy);
    FUNC0 (cx == 0, "Wrong cx (%i)\n", cx);
    FUNC0 (cy == 14, "Wrong cy (%i)\n", cy);
    FUNC2(himl);

    himl = FUNC1(0, 0, ILC_COLORDDB, 4, 4);
    FUNC0(himl != NULL, "got %p\n", himl);
    FUNC3(himl, &cx, &cy);
    FUNC0 (cx == 0, "Wrong cx (%i)\n", cx);
    FUNC0 (cy == 0, "Wrong cy (%i)\n", cy);
    FUNC2(himl);

    himl = FUNC1(0, 0, ILC_COLORDDB, 0, 4);
    FUNC0(himl != NULL, "got %p\n", himl);
    FUNC3(himl, &cx, &cy);
    FUNC0 (cx == 0, "Wrong cx (%i)\n", cx);
    FUNC0 (cy == 0, "Wrong cy (%i)\n", cy);

    FUNC5(himl, 3);
    ret = FUNC4(himl);
    FUNC0(ret == 3, "Unexpected image count after increase\n");

    /* Trying to actually add an image causes a crash on Windows */
    FUNC2(himl);

    /* Negative values fail */
    himl = FUNC1(-1, -1, ILC_COLORDDB, 4, 4);
    FUNC0(himl == NULL, "got %p\n", himl);
    himl = FUNC1(-1, 1, ILC_COLORDDB, 4, 4);
    FUNC0(himl == NULL, "got %p\n", himl);
    himl = FUNC1(1, -1, ILC_COLORDDB, 4, 4);
    FUNC0(himl == NULL, "got %p\n", himl);
}