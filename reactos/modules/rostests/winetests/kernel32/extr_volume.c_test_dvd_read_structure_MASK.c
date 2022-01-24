#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int Length; int /*<<< orphan*/ * Reserved; } ;
struct COMPLETE_DVD_MANUFACTURER_DESCRIPTOR {TYPE_2__ Header; } ;
struct COMPLETE_DVD_LAYER_DESCRIPTOR {TYPE_2__ Header; } ;
struct TYPE_5__ {scalar_t__ QuadPart; } ;
struct TYPE_7__ {int Format; scalar_t__ LayerNumber; scalar_t__ SessionId; TYPE_1__ BlockByteOffset; } ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  TYPE_3__ DVD_READ_STRUCTURE ;
typedef  int /*<<< orphan*/  DVD_MANUFACTURER_DESCRIPTOR ;
typedef  struct COMPLETE_DVD_MANUFACTURER_DESCRIPTOR DVD_LAYER_DESCRIPTOR ;
typedef  int /*<<< orphan*/  DVD_DESCRIPTOR_HEADER ;
typedef  struct COMPLETE_DVD_MANUFACTURER_DESCRIPTOR DVD_COPYRIGHT_DESCRIPTOR ;
typedef  int BOOL ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,int,struct COMPLETE_DVD_MANUFACTURER_DESCRIPTOR*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERROR_INSUFFICIENT_BUFFER ; 
 int /*<<< orphan*/  ERROR_INVALID_PARAMETER ; 
 int /*<<< orphan*/  ERROR_NOT_READY ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  IOCTL_DVD_READ_STRUCTURE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(HANDLE handle)
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


    /* DvdPhysicalDescriptor */
    dvdReadStructure.Format = 0;

    FUNC2(0xdeadbeef);

    /* Test whether this ioctl is supported */
    ret = FUNC0(handle, IOCTL_DVD_READ_STRUCTURE, &dvdReadStructure, sizeof(DVD_READ_STRUCTURE),
        &completeDvdLayerDescriptor, sizeof(struct COMPLETE_DVD_LAYER_DESCRIPTOR), &nbBytes, NULL);

    if(!ret)
    {
        FUNC5("IOCTL_DVD_READ_STRUCTURE not supported: %u\n", FUNC1());
        return;
    }

    /* Confirm there is always a header before the actual data */
    FUNC4( completeDvdLayerDescriptor.Header.Length == 0x0802, "Length is 0x%04x instead of 0x0802\n", completeDvdLayerDescriptor.Header.Length);
    FUNC4( completeDvdLayerDescriptor.Header.Reserved[0] == 0, "Reserved[0] is %x instead of 0\n", completeDvdLayerDescriptor.Header.Reserved[0]);
    FUNC4( completeDvdLayerDescriptor.Header.Reserved[1] == 0, "Reserved[1] is %x instead of 0\n", completeDvdLayerDescriptor.Header.Reserved[1]);

    /* TODO: Also check completeDvdLayerDescriptor.Descriptor content (via IOCTL_SCSI_PASS_THROUGH_DIRECT ?) */

    /* Insufficient output buffer */
    for(i=0; i<sizeof(DVD_DESCRIPTOR_HEADER); i++)
    {
        FUNC2(0xdeadbeef);

        ret = FUNC0(handle, IOCTL_DVD_READ_STRUCTURE, &dvdReadStructure, sizeof(DVD_READ_STRUCTURE),
            &completeDvdLayerDescriptor, i, &nbBytes, NULL);
        FUNC4(!ret && FUNC1() == ERROR_INSUFFICIENT_BUFFER,"IOCTL_DVD_READ_STRUCTURE should fail with small buffer\n");
    }

    FUNC2(0xdeadbeef);

    /* On newer version, an output buffer of sizeof(DVD_READ_STRUCTURE) size fails.
        I think this is to force developers to realize that there is a header before the actual content */
    ret = FUNC0(handle, IOCTL_DVD_READ_STRUCTURE, &dvdReadStructure, sizeof(DVD_READ_STRUCTURE),
        &dvdLayerDescriptor, sizeof(DVD_LAYER_DESCRIPTOR), &nbBytes, NULL);
    FUNC4( (!ret && FUNC1() == ERROR_INVALID_PARAMETER) || FUNC3(ret) /* < Win7 */,
        "IOCTL_DVD_READ_STRUCTURE should have failed\n");

    FUNC2(0xdeadbeef);

    ret = FUNC0(handle, IOCTL_DVD_READ_STRUCTURE, NULL, sizeof(DVD_READ_STRUCTURE),
        &completeDvdLayerDescriptor, sizeof(struct COMPLETE_DVD_LAYER_DESCRIPTOR), &nbBytes, NULL);
    FUNC4( (!ret && FUNC1() == ERROR_INVALID_PARAMETER),
        "IOCTL_DVD_READ_STRUCTURE should have failed\n");

    /* Test wrong input parameters */
    for(i=0; i<sizeof(DVD_READ_STRUCTURE); i++)
    {
        FUNC2(0xdeadbeef);

        ret = FUNC0(handle, IOCTL_DVD_READ_STRUCTURE, &dvdReadStructure, i,
        &completeDvdLayerDescriptor, sizeof(struct COMPLETE_DVD_LAYER_DESCRIPTOR), &nbBytes, NULL);
        FUNC4( (!ret && FUNC1() == ERROR_INVALID_PARAMETER),
            "IOCTL_DVD_READ_STRUCTURE should have failed\n");
    }


    /* DvdCopyrightDescriptor */
    dvdReadStructure.Format = 1;

    FUNC2(0xdeadbeef);

    /* Strangely, with NULL lpOutBuffer, last error is insufficient buffer, not invalid parameter as we could expect */
    ret = FUNC0(handle, IOCTL_DVD_READ_STRUCTURE, &dvdReadStructure, sizeof(DVD_READ_STRUCTURE),
        NULL, sizeof(DVD_COPYRIGHT_DESCRIPTOR), &nbBytes, NULL);
    FUNC4(!ret && FUNC1() == ERROR_INSUFFICIENT_BUFFER, "IOCTL_DVD_READ_STRUCTURE should have failed %d %u\n", ret, FUNC1());

    for(i=0; i<sizeof(DVD_COPYRIGHT_DESCRIPTOR); i++)
    {
        FUNC2(0xdeadbeef);

        ret = FUNC0(handle, IOCTL_DVD_READ_STRUCTURE, &dvdReadStructure, sizeof(DVD_READ_STRUCTURE),
            &dvdCopyrightDescriptor, i, &nbBytes, NULL);
        FUNC4(!ret && FUNC1() == ERROR_INSUFFICIENT_BUFFER, "IOCTL_DVD_READ_STRUCTURE should have failed %d %u\n", ret, FUNC1());
    }


    /* DvdManufacturerDescriptor */
    dvdReadStructure.Format = 4;

    FUNC2(0xdeadbeef);

    ret = FUNC0(handle, IOCTL_DVD_READ_STRUCTURE, &dvdReadStructure, sizeof(DVD_READ_STRUCTURE),
        &completeDvdManufacturerDescriptor, sizeof(DVD_MANUFACTURER_DESCRIPTOR), &nbBytes, NULL);
    FUNC4(ret || FUNC3(FUNC1() == ERROR_NOT_READY),
        "IOCTL_DVD_READ_STRUCTURE (DvdManufacturerDescriptor) failed, last error = %u\n", FUNC1());
    if(!ret)
        return;

    /* Confirm there is always a header before the actual data */
    FUNC4( completeDvdManufacturerDescriptor.Header.Length == 0x0802, "Length is 0x%04x instead of 0x0802\n", completeDvdManufacturerDescriptor.Header.Length);
    FUNC4( completeDvdManufacturerDescriptor.Header.Reserved[0] == 0, "Reserved[0] is %x instead of 0\n", completeDvdManufacturerDescriptor.Header.Reserved[0]);
    FUNC4( completeDvdManufacturerDescriptor.Header.Reserved[1] == 0, "Reserved[1] is %x instead of 0\n", completeDvdManufacturerDescriptor.Header.Reserved[1]);

    FUNC2(0xdeadbeef);

    /* Basic parameter check */
    ret = FUNC0(handle, IOCTL_DVD_READ_STRUCTURE, &dvdReadStructure, sizeof(DVD_READ_STRUCTURE),
        NULL, sizeof(DVD_MANUFACTURER_DESCRIPTOR), &nbBytes, NULL);
    FUNC4(!ret && FUNC1() == ERROR_INSUFFICIENT_BUFFER, "IOCTL_DVD_READ_STRUCTURE should have failed %d %u\n", ret, FUNC1());
}