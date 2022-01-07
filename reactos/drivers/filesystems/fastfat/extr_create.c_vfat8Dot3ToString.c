
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int WCHAR ;
typedef int VOID ;
typedef int USHORT ;
struct TYPE_14__ {int* Buffer; int Length; size_t MaximumLength; } ;
struct TYPE_13__ {int lCase; int ShortName; } ;
struct TYPE_12__ {int Length; int* Buffer; int MaximumLength; } ;
typedef TYPE_1__* PUNICODE_STRING ;
typedef TYPE_2__* PFAT_DIR_ENTRY ;
typedef TYPE_3__ OEM_STRING ;
typedef int CHAR ;


 scalar_t__ BooleanFlagOn (int ,int ) ;
 int DPRINT (char*,TYPE_1__*) ;
 int FALSE ;
 int FAT_ENTRY_VOLUME (TYPE_2__*) ;
 int RtlCopyMemory (int*,int ,int) ;
 int RtlDowncaseUnicodeString (TYPE_1__*,TYPE_1__*,int ) ;
 int RtlOemStringToUnicodeString (TYPE_1__*,TYPE_3__*,int ) ;
 int VFAT_CASE_LOWER_BASE ;
 int VFAT_CASE_LOWER_EXT ;

VOID
vfat8Dot3ToString(
    PFAT_DIR_ENTRY pEntry,
    PUNICODE_STRING NameU)
{
    OEM_STRING StringA;
    USHORT Length;
    CHAR cString[12];

    RtlCopyMemory(cString, pEntry->ShortName, 11);
    cString[11] = 0;
    if (cString[0] == 0x05)
    {
        cString[0] = 0xe5;
    }

    StringA.Buffer = cString;
    for (StringA.Length = 0;
         StringA.Length < 8 && StringA.Buffer[StringA.Length] != ' ';
         StringA.Length++);
    StringA.MaximumLength = StringA.Length;

    RtlOemStringToUnicodeString(NameU, &StringA, FALSE);

    if (BooleanFlagOn(pEntry->lCase, VFAT_CASE_LOWER_BASE))
    {
        RtlDowncaseUnicodeString(NameU, NameU, FALSE);
    }

    if (cString[8] != ' ')
    {
        Length = NameU->Length;
        NameU->Buffer += Length / sizeof(WCHAR);
        if (!FAT_ENTRY_VOLUME(pEntry))
        {
            Length += sizeof(WCHAR);
            NameU->Buffer[0] = L'.';
            NameU->Buffer++;
        }
        NameU->Length = 0;
        NameU->MaximumLength -= Length;

        StringA.Buffer = &cString[8];
        for (StringA.Length = 0;
        StringA.Length < 3 && StringA.Buffer[StringA.Length] != ' ';
        StringA.Length++);
        StringA.MaximumLength = StringA.Length;
        RtlOemStringToUnicodeString(NameU, &StringA, FALSE);
        if (BooleanFlagOn(pEntry->lCase, VFAT_CASE_LOWER_EXT))
        {
            RtlDowncaseUnicodeString(NameU, NameU, FALSE);
        }
        NameU->Buffer -= Length / sizeof(WCHAR);
        NameU->Length += Length;
        NameU->MaximumLength += Length;
    }

    NameU->Buffer[NameU->Length / sizeof(WCHAR)] = 0;
    DPRINT("'%wZ'\n", NameU);
}
