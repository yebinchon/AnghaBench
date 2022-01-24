#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int bLength; int bNumEndpoints; int bDescriptorType; int iInterface; } ;
typedef  TYPE_1__ USB_INTERFACE_DESCRIPTOR ;
typedef  int (* USBD_GetInterfaceLengthTYPE ) (TYPE_1__*,int /*<<< orphan*/ ) ;
typedef  int /*<<< orphan*/  PUCHAR ;
typedef  int /*<<< orphan*/  InterfaceDescriptor ;
typedef  int /*<<< orphan*/  HMODULE ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  DONT_RESOLVE_DLL_REFERENCES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

int FUNC4()
{
    HMODULE Lib;
    USB_INTERFACE_DESCRIPTOR InterfaceDescriptor;
    USBD_GetInterfaceLengthTYPE USBD_GetInterfaceLength;

    InterfaceDescriptor.bLength = 10;
    InterfaceDescriptor.bNumEndpoints = 2;
    InterfaceDescriptor.bDescriptorType = /*USB_INTERFACE_DESCRIPTOR_TYPE*/2;
    InterfaceDescriptor.iInterface = 0x1;

    Lib = FUNC2("usbd.sys", NULL, DONT_RESOLVE_DLL_REFERENCES);
    USBD_GetInterfaceLength = (USBD_GetInterfaceLengthTYPE)FUNC1(Lib, "USBD_GetInterfaceLength");
    FUNC3("%X\n", USBD_GetInterfaceLength(&InterfaceDescriptor, (PUCHAR)((DWORD)&InterfaceDescriptor + sizeof(InterfaceDescriptor))));
    FUNC0(Lib);

    Lib = FUNC2("usbd.ms", NULL, DONT_RESOLVE_DLL_REFERENCES);
    USBD_GetInterfaceLength = (USBD_GetInterfaceLengthTYPE)FUNC1(Lib, "USBD_GetInterfaceLength");
    FUNC3("%X\n", USBD_GetInterfaceLength(&InterfaceDescriptor, (PUCHAR)((DWORD)&InterfaceDescriptor + sizeof(InterfaceDescriptor))));
    FUNC0(Lib);
    return 0;
}