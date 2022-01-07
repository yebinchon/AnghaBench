
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;
typedef int ULONG ;
typedef int PVOID ;
typedef int PCHAR ;
typedef int DWORD ;
ULONG
GetDIBPixel(ULONG iFormat, PVOID pvBits, ULONG x)
{
    switch (iFormat)
    {
        case 132:

        case 134:
        case 133:
            return *(WORD*)((PCHAR)pvBits + x * sizeof(WORD));

        case 130:
        case 131:
            return (*(DWORD*)((PCHAR)pvBits + x * 3)) & 0xffffff;

        case 128:
        case 129:
            return *(DWORD*)((PCHAR)pvBits + x * sizeof(DWORD));
    }
    return 0;
}
