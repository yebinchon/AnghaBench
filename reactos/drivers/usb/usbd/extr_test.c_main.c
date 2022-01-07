
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bLength; int bNumEndpoints; int bDescriptorType; int iInterface; } ;
typedef TYPE_1__ USB_INTERFACE_DESCRIPTOR ;
typedef int (* USBD_GetInterfaceLengthTYPE ) (TYPE_1__*,int ) ;
typedef int PUCHAR ;
typedef int InterfaceDescriptor ;
typedef int HMODULE ;
typedef scalar_t__ DWORD ;


 int DONT_RESOLVE_DLL_REFERENCES ;
 int FreeLibrary (int ) ;
 scalar_t__ GetProcAddress (int ,char*) ;
 int LoadLibraryEx (char*,int *,int ) ;
 int printf (char*,int) ;

int main()
{
    HMODULE Lib;
    USB_INTERFACE_DESCRIPTOR InterfaceDescriptor;
    USBD_GetInterfaceLengthTYPE USBD_GetInterfaceLength;

    InterfaceDescriptor.bLength = 10;
    InterfaceDescriptor.bNumEndpoints = 2;
    InterfaceDescriptor.bDescriptorType = 2;
    InterfaceDescriptor.iInterface = 0x1;

    Lib = LoadLibraryEx("usbd.sys", ((void*)0), DONT_RESOLVE_DLL_REFERENCES);
    USBD_GetInterfaceLength = (USBD_GetInterfaceLengthTYPE)GetProcAddress(Lib, "USBD_GetInterfaceLength");
    printf("%X\n", USBD_GetInterfaceLength(&InterfaceDescriptor, (PUCHAR)((DWORD)&InterfaceDescriptor + sizeof(InterfaceDescriptor))));
    FreeLibrary(Lib);

    Lib = LoadLibraryEx("usbd.ms", ((void*)0), DONT_RESOLVE_DLL_REFERENCES);
    USBD_GetInterfaceLength = (USBD_GetInterfaceLengthTYPE)GetProcAddress(Lib, "USBD_GetInterfaceLength");
    printf("%X\n", USBD_GetInterfaceLength(&InterfaceDescriptor, (PUCHAR)((DWORD)&InterfaceDescriptor + sizeof(InterfaceDescriptor))));
    FreeLibrary(Lib);
    return 0;
}
