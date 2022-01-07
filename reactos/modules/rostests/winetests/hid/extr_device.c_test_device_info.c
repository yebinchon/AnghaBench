
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int device_name ;
typedef int attributes ;
typedef int WCHAR ;
struct TYPE_6__ {int Size; int VersionNumber; int ProductID; int VendorID; } ;
struct TYPE_5__ {int Usage; int UsagePage; } ;
typedef int PHIDP_PREPARSED_DATA ;
typedef scalar_t__ NTSTATUS ;
typedef TYPE_1__ HIDP_CAPS ;
typedef TYPE_2__ HIDD_ATTRIBUTES ;
typedef int HANDLE ;
typedef int BOOL ;


 scalar_t__ GetLastError () ;
 scalar_t__ HIDP_STATUS_SUCCESS ;
 int HidD_FreePreparsedData (int ) ;
 int HidD_GetAttributes (int ,TYPE_2__*) ;
 int HidD_GetPreparsedData (int ,int *) ;
 int HidD_GetProductString (int ,int *,int) ;
 scalar_t__ HidP_GetCaps (int ,TYPE_1__*) ;
 int ok (int,char*,scalar_t__) ;
 int trace (char*,int ,int ,int ) ;
 int wine_dbgstr_w (int *) ;

__attribute__((used)) static void test_device_info(HANDLE device)
{
    PHIDP_PREPARSED_DATA ppd;
    HIDP_CAPS Caps;
    HIDD_ATTRIBUTES attributes;
    NTSTATUS status;
    BOOL rc;
    WCHAR device_name[128];

    rc = HidD_GetPreparsedData(device, &ppd);
    ok(rc, "Failed to get preparsed data(0x%x)\n", GetLastError());
    status = HidP_GetCaps(ppd, &Caps);
    ok(status == HIDP_STATUS_SUCCESS, "Failed to get Caps(0x%x)\n", status);
    rc = HidD_GetProductString(device, device_name, sizeof(device_name));
    ok(rc, "Failed to get product string(0x%x)\n", GetLastError());
    trace("Found device %s (%02x, %02x)\n", wine_dbgstr_w(device_name), Caps.UsagePage, Caps.Usage);
    rc = HidD_FreePreparsedData(ppd);
    ok(rc, "Failed to free preparsed data(0x%x)\n", GetLastError());
    rc = HidD_GetAttributes(device, &attributes);
    ok(rc, "Failed to get device attributes (0x%x)\n", GetLastError());
    ok(attributes.Size == sizeof(attributes), "Unexpected HIDD_ATTRIBUTES size: %d\n", attributes.Size);
    trace("Device attributes: vid:%04x pid:%04x ver:%04x\n", attributes.VendorID, attributes.ProductID, attributes.VersionNumber);
}
