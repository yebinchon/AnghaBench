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
typedef  int /*<<< orphan*/ * HIMAGELIST ;
typedef  int /*<<< orphan*/  HBITMAP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ILC_COLOR ; 
 int /*<<< orphan*/  bitmap_bits ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int,int,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static HIMAGELIST FUNC5(int cx, int cy)
{
    /* Create an ImageList and put an image into it */
    HIMAGELIST himl = FUNC4(cx, cy, ILC_COLOR, 1, 1);
    HBITMAP hbm = FUNC0(48, 48, 1, 1, bitmap_bits);

    FUNC2(himl != NULL, "Failed to create image list, %d x %d.\n", cx, cy);
    FUNC3(himl, hbm, NULL);
    FUNC1(hbm);
    return himl;
}