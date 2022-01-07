
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONGLONG ;
typedef int ULONG ;
typedef int UCHAR ;
typedef int* PULONGLONG ;
typedef int* PULONG ;
typedef int* PUCHAR ;
typedef int PPDO_DEVICE_EXTENSION ;
typedef int BOOLEAN ;


 int DPRINT (char*) ;
 int FALSE ;
 int PCI_ADDRESS_IO_ADDRESS_MASK_64 ;
 int PCI_ADDRESS_IO_SPACE ;
 int PCI_ADDRESS_MEMORY_ADDRESS_MASK_64 ;
 int PCI_ADDRESS_MEMORY_TYPE_MASK ;
 int PCI_TYPE_20BIT ;
 int PCI_TYPE_32BIT ;
 int PCI_TYPE_64BIT ;
 int PdoReadPciBar (int ,int,int*,int*) ;
 int TRUE ;

__attribute__((used)) static BOOLEAN
PdoGetRangeLength(PPDO_DEVICE_EXTENSION DeviceExtension,
                  UCHAR Bar,
                  PULONGLONG Base,
                  PULONGLONG Length,
                  PULONG Flags,
                  PUCHAR NextBar,
                  PULONGLONG MaximumAddress)
{
    union {
        struct {
            ULONG Bar0;
            ULONG Bar1;
        } Bars;
        ULONGLONG Bar;
    } OriginalValue;
    union {
        struct {
            ULONG Bar0;
            ULONG Bar1;
        } Bars;
        ULONGLONG Bar;
    } NewValue;
    ULONG Offset;


    Offset = 0x10 + Bar * 4;


    *NextBar = Bar + 1;


    OriginalValue.Bar = 0ULL;
    NewValue.Bar = 0ULL;


    if (!PdoReadPciBar(DeviceExtension, Offset,
                       &OriginalValue.Bars.Bar0,
                       &NewValue.Bars.Bar0))
    {
        return FALSE;
    }


    if (!(OriginalValue.Bars.Bar0 & PCI_ADDRESS_IO_SPACE))
    {

        if (MaximumAddress != ((void*)0))
        {
            if ((OriginalValue.Bars.Bar0 & PCI_ADDRESS_MEMORY_TYPE_MASK) == PCI_TYPE_32BIT)
            {
                *MaximumAddress = 0x00000000FFFFFFFFULL;
            }
            else if ((OriginalValue.Bars.Bar0 & PCI_ADDRESS_MEMORY_TYPE_MASK) == PCI_TYPE_20BIT)
            {
                *MaximumAddress = 0x00000000000FFFFFULL;
            }
            else if ((OriginalValue.Bars.Bar0 & PCI_ADDRESS_MEMORY_TYPE_MASK) == PCI_TYPE_64BIT)
            {
                *MaximumAddress = 0xFFFFFFFFFFFFFFFFULL;
            }
        }


        if ((OriginalValue.Bars.Bar0 & PCI_ADDRESS_MEMORY_TYPE_MASK) == PCI_TYPE_64BIT)
        {

            *NextBar = Bar + 2;


            if (!PdoReadPciBar(DeviceExtension, Offset + 4,
                               &OriginalValue.Bars.Bar1,
                               &NewValue.Bars.Bar1))
            {
                return FALSE;
            }
        }
    }
    else
    {

        if (MaximumAddress != ((void*)0))
        {
            *MaximumAddress = 0x00000000FFFFFFFFULL;
        }
    }

    if (NewValue.Bar == 0)
    {
        DPRINT("Unused address register\n");
        *Base = 0;
        *Length = 0;
        *Flags = 0;
        return TRUE;
    }

    *Base = ((OriginalValue.Bar & PCI_ADDRESS_IO_SPACE)
             ? (OriginalValue.Bar & PCI_ADDRESS_IO_ADDRESS_MASK_64)
             : (OriginalValue.Bar & PCI_ADDRESS_MEMORY_ADDRESS_MASK_64));

    *Length = ~((NewValue.Bar & PCI_ADDRESS_IO_SPACE)
                ? (NewValue.Bar & PCI_ADDRESS_IO_ADDRESS_MASK_64)
                : (NewValue.Bar & PCI_ADDRESS_MEMORY_ADDRESS_MASK_64)) + 1;

    *Flags = (NewValue.Bar & PCI_ADDRESS_IO_SPACE)
             ? (NewValue.Bar & ~PCI_ADDRESS_IO_ADDRESS_MASK_64)
             : (NewValue.Bar & ~PCI_ADDRESS_MEMORY_ADDRESS_MASK_64);

    return TRUE;
}
