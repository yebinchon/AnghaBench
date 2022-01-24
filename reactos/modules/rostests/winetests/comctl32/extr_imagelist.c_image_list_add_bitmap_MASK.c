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
typedef  int /*<<< orphan*/  HBITMAP ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  BMP_CX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 

__attribute__((used)) static void FUNC6(HIMAGELIST himl, BYTE grey, int i)
{
    char comment[16];
    HBITMAP hbm;
    int ret;

    FUNC5(comment, "%d", i);
    hbm = FUNC2(BMP_CX, BMP_CX, FUNC1(grey, grey, grey), comment);
    ret = FUNC4(himl, hbm, NULL);
    FUNC3(ret != -1, "Failed to add image to imagelist.\n");
    FUNC0(hbm);
}