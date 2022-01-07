
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int Length; int * Reserved; } ;
struct COMPLETE_DVD_MANUFACTURER_DESCRIPTOR {TYPE_2__ Header; } ;
struct COMPLETE_DVD_LAYER_DESCRIPTOR {TYPE_2__ Header; } ;
struct TYPE_5__ {scalar_t__ QuadPart; } ;
struct TYPE_7__ {int Format; scalar_t__ LayerNumber; scalar_t__ SessionId; TYPE_1__ BlockByteOffset; } ;
typedef int HANDLE ;
typedef int DWORD ;
typedef TYPE_3__ DVD_READ_STRUCTURE ;
typedef int DVD_MANUFACTURER_DESCRIPTOR ;
typedef struct COMPLETE_DVD_MANUFACTURER_DESCRIPTOR DVD_LAYER_DESCRIPTOR ;
typedef int DVD_DESCRIPTOR_HEADER ;
typedef struct COMPLETE_DVD_MANUFACTURER_DESCRIPTOR DVD_COPYRIGHT_DESCRIPTOR ;
typedef int BOOL ;


 int DeviceIoControl (int ,int ,TYPE_3__*,int,struct COMPLETE_DVD_MANUFACTURER_DESCRIPTOR*,int,int *,int *) ;
 int ERROR_INSUFFICIENT_BUFFER ;
 int ERROR_INVALID_PARAMETER ;
 int ERROR_NOT_READY ;
 int GetLastError () ;
 int IOCTL_DVD_READ_STRUCTURE ;
 int SetLastError (int) ;
 scalar_t__ broken (int) ;
 int ok (int,char*,...) ;
 int skip (char*,int ) ;

__attribute__((used)) static void test_dvd_read_structure(HANDLE handle)
{
    int i;
    DWORD nbBytes;
    BOOL ret;
    DVD_READ_STRUCTURE dvdReadStructure;
    DVD_LAYER_DESCRIPTOR dvdLayerDescriptor;
    struct COMPLETE_DVD_LAYER_DESCRIPTOR completeDvdLayerDescriptor;
    DVD_COPYRIGHT_DESCRIPTOR dvdCopyrightDescriptor;
    struct COMPLETE_DVD_MANUFACTURER_DESCRIPTOR completeDvdManufacturerDescriptor;

    dvdReadStructure.BlockByteOffset.QuadPart = 0;
    dvdReadStructure.SessionId = 0;
    dvdReadStructure.LayerNumber = 0;



    dvdReadStructure.Format = 0;

    SetLastError(0xdeadbeef);


    ret = DeviceIoControl(handle, IOCTL_DVD_READ_STRUCTURE, &dvdReadStructure, sizeof(DVD_READ_STRUCTURE),
        &completeDvdLayerDescriptor, sizeof(struct COMPLETE_DVD_LAYER_DESCRIPTOR), &nbBytes, ((void*)0));

    if(!ret)
    {
        skip("IOCTL_DVD_READ_STRUCTURE not supported: %u\n", GetLastError());
        return;
    }


    ok( completeDvdLayerDescriptor.Header.Length == 0x0802, "Length is 0x%04x instead of 0x0802\n", completeDvdLayerDescriptor.Header.Length);
    ok( completeDvdLayerDescriptor.Header.Reserved[0] == 0, "Reserved[0] is %x instead of 0\n", completeDvdLayerDescriptor.Header.Reserved[0]);
    ok( completeDvdLayerDescriptor.Header.Reserved[1] == 0, "Reserved[1] is %x instead of 0\n", completeDvdLayerDescriptor.Header.Reserved[1]);




    for(i=0; i<sizeof(DVD_DESCRIPTOR_HEADER); i++)
    {
        SetLastError(0xdeadbeef);

        ret = DeviceIoControl(handle, IOCTL_DVD_READ_STRUCTURE, &dvdReadStructure, sizeof(DVD_READ_STRUCTURE),
            &completeDvdLayerDescriptor, i, &nbBytes, ((void*)0));
        ok(!ret && GetLastError() == ERROR_INSUFFICIENT_BUFFER,"IOCTL_DVD_READ_STRUCTURE should fail with small buffer\n");
    }

    SetLastError(0xdeadbeef);



    ret = DeviceIoControl(handle, IOCTL_DVD_READ_STRUCTURE, &dvdReadStructure, sizeof(DVD_READ_STRUCTURE),
        &dvdLayerDescriptor, sizeof(DVD_LAYER_DESCRIPTOR), &nbBytes, ((void*)0));
    ok( (!ret && GetLastError() == ERROR_INVALID_PARAMETER) || broken(ret) ,
        "IOCTL_DVD_READ_STRUCTURE should have failed\n");

    SetLastError(0xdeadbeef);

    ret = DeviceIoControl(handle, IOCTL_DVD_READ_STRUCTURE, ((void*)0), sizeof(DVD_READ_STRUCTURE),
        &completeDvdLayerDescriptor, sizeof(struct COMPLETE_DVD_LAYER_DESCRIPTOR), &nbBytes, ((void*)0));
    ok( (!ret && GetLastError() == ERROR_INVALID_PARAMETER),
        "IOCTL_DVD_READ_STRUCTURE should have failed\n");


    for(i=0; i<sizeof(DVD_READ_STRUCTURE); i++)
    {
        SetLastError(0xdeadbeef);

        ret = DeviceIoControl(handle, IOCTL_DVD_READ_STRUCTURE, &dvdReadStructure, i,
        &completeDvdLayerDescriptor, sizeof(struct COMPLETE_DVD_LAYER_DESCRIPTOR), &nbBytes, ((void*)0));
        ok( (!ret && GetLastError() == ERROR_INVALID_PARAMETER),
            "IOCTL_DVD_READ_STRUCTURE should have failed\n");
    }



    dvdReadStructure.Format = 1;

    SetLastError(0xdeadbeef);


    ret = DeviceIoControl(handle, IOCTL_DVD_READ_STRUCTURE, &dvdReadStructure, sizeof(DVD_READ_STRUCTURE),
        ((void*)0), sizeof(DVD_COPYRIGHT_DESCRIPTOR), &nbBytes, ((void*)0));
    ok(!ret && GetLastError() == ERROR_INSUFFICIENT_BUFFER, "IOCTL_DVD_READ_STRUCTURE should have failed %d %u\n", ret, GetLastError());

    for(i=0; i<sizeof(DVD_COPYRIGHT_DESCRIPTOR); i++)
    {
        SetLastError(0xdeadbeef);

        ret = DeviceIoControl(handle, IOCTL_DVD_READ_STRUCTURE, &dvdReadStructure, sizeof(DVD_READ_STRUCTURE),
            &dvdCopyrightDescriptor, i, &nbBytes, ((void*)0));
        ok(!ret && GetLastError() == ERROR_INSUFFICIENT_BUFFER, "IOCTL_DVD_READ_STRUCTURE should have failed %d %u\n", ret, GetLastError());
    }



    dvdReadStructure.Format = 4;

    SetLastError(0xdeadbeef);

    ret = DeviceIoControl(handle, IOCTL_DVD_READ_STRUCTURE, &dvdReadStructure, sizeof(DVD_READ_STRUCTURE),
        &completeDvdManufacturerDescriptor, sizeof(DVD_MANUFACTURER_DESCRIPTOR), &nbBytes, ((void*)0));
    ok(ret || broken(GetLastError() == ERROR_NOT_READY),
        "IOCTL_DVD_READ_STRUCTURE (DvdManufacturerDescriptor) failed, last error = %u\n", GetLastError());
    if(!ret)
        return;


    ok( completeDvdManufacturerDescriptor.Header.Length == 0x0802, "Length is 0x%04x instead of 0x0802\n", completeDvdManufacturerDescriptor.Header.Length);
    ok( completeDvdManufacturerDescriptor.Header.Reserved[0] == 0, "Reserved[0] is %x instead of 0\n", completeDvdManufacturerDescriptor.Header.Reserved[0]);
    ok( completeDvdManufacturerDescriptor.Header.Reserved[1] == 0, "Reserved[1] is %x instead of 0\n", completeDvdManufacturerDescriptor.Header.Reserved[1]);

    SetLastError(0xdeadbeef);


    ret = DeviceIoControl(handle, IOCTL_DVD_READ_STRUCTURE, &dvdReadStructure, sizeof(DVD_READ_STRUCTURE),
        ((void*)0), sizeof(DVD_MANUFACTURER_DESCRIPTOR), &nbBytes, ((void*)0));
    ok(!ret && GetLastError() == ERROR_INSUFFICIENT_BUFFER, "IOCTL_DVD_READ_STRUCTURE should have failed %d %u\n", ret, GetLastError());
}
