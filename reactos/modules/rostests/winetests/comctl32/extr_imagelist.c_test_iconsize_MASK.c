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
typedef  int /*<<< orphan*/  HIMAGELIST ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  ILC_COLOR16 ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int*,int*) ; 

__attribute__((used)) static void FUNC4(void)
{
    HIMAGELIST himl;
    INT cx, cy;
    BOOL ret;

    himl = FUNC1(16, 16, ILC_COLOR16, 0, 3);
    /* null pointers, not zero imagelist dimensions */
    ret = FUNC3(himl, NULL, NULL);
    FUNC0(!ret, "got %d\n", ret);

    /* doesn't touch return pointers */
    cx = 0x1abe11ed;
    ret = FUNC3(himl, &cx, NULL);
    FUNC0(!ret, "got %d\n", ret);
    FUNC0(cx == 0x1abe11ed, "got %d\n", cx);

    cy = 0x1abe11ed;
    ret = FUNC3(himl, NULL, &cy);
    FUNC0(!ret, "got %d\n", ret);
    FUNC0(cy == 0x1abe11ed, "got %d\n", cy);

    FUNC2(himl);

    ret = FUNC3((HIMAGELIST)0xdeadbeef, &cx, &cy);
    FUNC0(!ret, "got %d\n", ret);
}