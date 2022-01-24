#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  info ;
struct TYPE_7__ {int member_0; int member_1; int member_2; int member_3; int member_4; int member_5; int member_6; int member_7; } ;
struct TYPE_9__ {int member_0; int member_1; int member_2; TYPE_1__ member_3; } ;
struct TYPE_8__ {int cbSize; } ;
typedef  TYPE_2__ SP_DEVINFO_DATA ;
typedef  scalar_t__ HDEVINFO ;
typedef  TYPE_3__ GUID ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int DIGCF_DEVICEINTERFACE ; 
 int DIGCF_PRESENT ; 
 int /*<<< orphan*/  ERROR_NO_MORE_ITEMS ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(void)
{
    const GUID not_existing_guid = { 0xdeadbeef, 0xdead, 0xbeef, { 0x88, 0x99, 0xaa, 0xbb, 0xcc, 0xdd, 0xee, 0xff } };
    HDEVINFO dev_info;
    BOOL ret;
    SP_DEVINFO_DATA info;

    dev_info = FUNC2(&not_existing_guid, NULL, NULL, DIGCF_PRESENT | DIGCF_DEVICEINTERFACE, NULL, NULL, NULL);
    FUNC4(dev_info != INVALID_HANDLE_VALUE, "Expected success\n");

    FUNC3(&info, sizeof(info));
    info.cbSize = sizeof(info);
    ret = FUNC1(dev_info, 0, &info);
    FUNC4 (!ret, "Expected failure.\n");
    FUNC5(ERROR_NO_MORE_ITEMS);

    FUNC0(dev_info);
}