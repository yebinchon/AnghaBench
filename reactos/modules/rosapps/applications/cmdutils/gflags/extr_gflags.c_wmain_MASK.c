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
typedef  int /*<<< orphan*/  LPWSTR ;

/* Variables and functions */
 int /*<<< orphan*/  DEST_IMAGE ; 
 int FUNC0 () ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ UseImageFile ; 
 scalar_t__ UsePageHeap ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

int FUNC5(int argc, LPWSTR argv[])
{
    if (!FUNC2(argc, argv))
    {
        FUNC4(L"Usage: gflags [/p [image.exe] [/enable|/disable [/full]]]\n"
                L"              [/i <image.exe> [<Flags>]]\n"
                L"    image.exe:  Image you want to deal with\n"
                L"    /enable:    enable page heap for the image\n"
                L"    /disable:   disable page heap for the image\n"
                L"    /full:      activate full debug page heap\n"
                L"    <Flags>:    A 32 bit hex number (0x00000001) that specifies\n"
                L"                one or more global flags to set.\n"
                L"                Without any flags, the current settings are shown.\n"
                L"                Specify FFFFFFFF to delete the GlobalFlags entry.\n"
                L"                Additionally, instead of a single hex number,\n"
                L"                specify a list of abbreviations prefixed with\n"
                L"                a '+' to add, and '-' to remove a bit.\n"
                L"                Valid abbreviations:\n");
        FUNC3(~0, DEST_IMAGE);
        return 1;
    }

    if (UsePageHeap)
    {
        return FUNC1();
    }
    else if (UseImageFile)
    {
        return FUNC0();
    }
    return 2;
}