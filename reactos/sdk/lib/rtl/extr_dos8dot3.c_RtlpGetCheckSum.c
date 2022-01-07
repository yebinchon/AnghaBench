
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
typedef int USHORT ;
struct TYPE_3__ {int Length; int* Buffer; } ;
typedef int* PWCHAR ;
typedef TYPE_1__* PUNICODE_STRING ;



__attribute__((used)) static USHORT
RtlpGetCheckSum(PUNICODE_STRING Name)
{
    PWCHAR CurrentChar;
    USHORT Hash;
    USHORT Saved;
    USHORT Length;

    if (!Name->Length)
        return 0;

    if (Name->Length == sizeof(WCHAR))
        return Name->Buffer[0];

    CurrentChar = Name->Buffer;
    Hash = (*CurrentChar << 8) + *(CurrentChar + 1);

    if (Name->Length == 2 * sizeof(WCHAR))
        return Hash;

    Saved = Hash;
    Length = 2;

    do
    {
        CurrentChar += 2;
        Hash = (Hash << 7) + *CurrentChar;
        Hash = (Saved >> 1) + (Hash << 8);

        if (Length + 1 < Name->Length / sizeof(WCHAR))
        {
            Hash += *(CurrentChar + 1);
        }

        Saved = Hash;
        Length += 2;
    }
    while (Length < Name->Length / sizeof(WCHAR));

    return Hash;
}
