#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  device_name ;
typedef  int /*<<< orphan*/  attributes ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_6__ {int Size; int /*<<< orphan*/  VersionNumber; int /*<<< orphan*/  ProductID; int /*<<< orphan*/  VendorID; } ;
struct TYPE_5__ {int /*<<< orphan*/  Usage; int /*<<< orphan*/  UsagePage; } ;
typedef  int /*<<< orphan*/  PHIDP_PREPARSED_DATA ;
typedef  scalar_t__ NTSTATUS ;
typedef  TYPE_1__ HIDP_CAPS ;
typedef  TYPE_2__ HIDD_ATTRIBUTES ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 scalar_t__ HIDP_STATUS_SUCCESS ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(HANDLE device)
{
    PHIDP_PREPARSED_DATA ppd;
    HIDP_CAPS Caps;
    HIDD_ATTRIBUTES attributes;
    NTSTATUS status;
    BOOL rc;
    WCHAR device_name[128];

    rc = FUNC3(device, &ppd);
    FUNC6(rc, "Failed to get preparsed data(0x%x)\n", FUNC0());
    status = FUNC5(ppd, &Caps);
    FUNC6(status == HIDP_STATUS_SUCCESS, "Failed to get Caps(0x%x)\n", status);
    rc = FUNC4(device, device_name, sizeof(device_name));
    FUNC6(rc, "Failed to get product string(0x%x)\n", FUNC0());
    FUNC7("Found device %s (%02x, %02x)\n", FUNC8(device_name), Caps.UsagePage, Caps.Usage);
    rc = FUNC1(ppd);
    FUNC6(rc, "Failed to free preparsed data(0x%x)\n", FUNC0());
    rc = FUNC2(device, &attributes);
    FUNC6(rc, "Failed to get device attributes (0x%x)\n", FUNC0());
    FUNC6(attributes.Size == sizeof(attributes), "Unexpected HIDD_ATTRIBUTES size: %d\n", attributes.Size);
    FUNC7("Device attributes: vid:%04x pid:%04x ver:%04x\n", attributes.VendorID, attributes.ProductID, attributes.VersionNumber);
}