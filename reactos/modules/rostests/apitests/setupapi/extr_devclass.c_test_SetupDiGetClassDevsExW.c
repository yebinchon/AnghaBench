
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int info ;
struct TYPE_7__ {int member_0; int member_1; int member_2; int member_3; int member_4; int member_5; int member_6; int member_7; } ;
struct TYPE_9__ {int member_0; int member_1; int member_2; TYPE_1__ member_3; } ;
struct TYPE_8__ {int cbSize; } ;
typedef TYPE_2__ SP_DEVINFO_DATA ;
typedef scalar_t__ HDEVINFO ;
typedef TYPE_3__ GUID ;
typedef int BOOL ;


 int DIGCF_DEVICEINTERFACE ;
 int DIGCF_PRESENT ;
 int ERROR_NO_MORE_ITEMS ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int SetupDiDestroyDeviceInfoList (scalar_t__) ;
 int SetupDiEnumDeviceInfo (scalar_t__,int ,TYPE_2__*) ;
 scalar_t__ SetupDiGetClassDevsExW (TYPE_3__ const*,int *,int *,int,int *,int *,int *) ;
 int ZeroMemory (TYPE_2__*,int) ;
 int ok (int,char*) ;
 int ok_lasterr (int ) ;

__attribute__((used)) static void test_SetupDiGetClassDevsExW(void)
{
    const GUID not_existing_guid = { 0xdeadbeef, 0xdead, 0xbeef, { 0x88, 0x99, 0xaa, 0xbb, 0xcc, 0xdd, 0xee, 0xff } };
    HDEVINFO dev_info;
    BOOL ret;
    SP_DEVINFO_DATA info;

    dev_info = SetupDiGetClassDevsExW(&not_existing_guid, ((void*)0), ((void*)0), DIGCF_PRESENT | DIGCF_DEVICEINTERFACE, ((void*)0), ((void*)0), ((void*)0));
    ok(dev_info != INVALID_HANDLE_VALUE, "Expected success\n");

    ZeroMemory(&info, sizeof(info));
    info.cbSize = sizeof(info);
    ret = SetupDiEnumDeviceInfo(dev_info, 0, &info);
    ok (!ret, "Expected failure.\n");
    ok_lasterr(ERROR_NO_MORE_ITEMS);

    SetupDiDestroyDeviceInfoList(dev_info);
}
