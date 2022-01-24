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
typedef  int /*<<< orphan*/  HIMAGELIST ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  ILCF_MOVE ; 
 int /*<<< orphan*/  ILC_COLOR ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(void)
{
    HIMAGELIST dst, src;
    BOOL ret;
    int count;

    dst = FUNC3(5, 11, ILC_COLOR, 1, 1);
    count = FUNC5(dst);
    FUNC1(!count, "ImageList not empty.\n");
    src = FUNC0(7, 13);
    count = FUNC5(src);
    FUNC1(count > 2, "Tests need an ImageList with more than 2 images\n");

    /* ImageList_Copy() cannot copy between two ImageLists */
    ret = FUNC2(dst, 0, src, 2, ILCF_MOVE);
    FUNC1(!ret, "ImageList_Copy() should have returned FALSE\n");
    count = FUNC5(dst);
    FUNC1(count == 0, "Expected no image in dst ImageList, got %d\n", count);

    FUNC4(dst);
    FUNC4(src);
}