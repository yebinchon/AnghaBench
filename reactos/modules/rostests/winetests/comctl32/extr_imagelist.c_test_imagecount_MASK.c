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
typedef  scalar_t__ HIMAGELIST ;

/* Variables and functions */
 int /*<<< orphan*/  ILC_COLOR16 ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(void)
{
    HIMAGELIST himl;

    FUNC0(0 == FUNC3((HIMAGELIST)0xdeadbeef), "don't crash on bad handle\n");

    if (!&pImageList_SetImageCount)
    {
        FUNC5("ImageList_SetImageCount not available\n");
        return;
    }

    himl = FUNC1(84, 84, ILC_COLOR16, 0, 3);
    FUNC0(himl != 0, "Failed to create imagelist.\n");

    FUNC0(FUNC4(himl, 3), "couldn't increase image count\n");
    FUNC0(FUNC3(himl) == 3, "invalid image count after increase\n");
    FUNC0(FUNC4(himl, 1), "couldn't decrease image count\n");
    FUNC0(FUNC3(himl) == 1, "invalid image count after decrease to 1\n");
    FUNC0(FUNC4(himl, 0), "couldn't decrease image count\n");
    FUNC0(FUNC3(himl) == 0, "invalid image count after decrease to 0\n");

    FUNC0(FUNC2(himl), "Failed to destroy imagelist.\n");
}