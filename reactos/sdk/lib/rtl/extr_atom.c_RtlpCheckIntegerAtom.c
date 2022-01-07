
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int USHORT ;
typedef int UNICODE_STRING ;
typedef int ULONG_PTR ;
typedef int ULONG ;
typedef int* PWSTR ;
typedef int* PWCHAR ;
typedef int* PUSHORT ;
typedef int BOOLEAN ;


 int ASSERT (int ) ;
 int DPRINT (char*,...) ;
 int FALSE ;
 int RtlInitUnicodeString (int *,int*) ;
 int RtlUnicodeStringToInteger (int *,int,int*) ;
 int TRUE ;

__attribute__((used)) static
BOOLEAN
RtlpCheckIntegerAtom(
    PWSTR AtomName,
    PUSHORT AtomValue)
{
    UNICODE_STRING AtomString;
    ULONG LongValue;
    USHORT LoValue;
    PWCHAR p;

    DPRINT("RtlpCheckIntegerAtom(AtomName '%S' AtomValue %p)\n",
           AtomName, AtomValue);

    if (!((ULONG_PTR)AtomName & 0xFFFF0000))
    {
        LoValue = (USHORT)((ULONG_PTR)AtomName & 0xFFFF);

        if (LoValue == 0)
            LoValue = 0xC000;

        if (AtomValue != ((void*)0))
            *AtomValue = LoValue;

        return TRUE;
    }





    ASSERT(AtomName != ((void*)0));

    if (*AtomName != L'#')
        return FALSE;

    p = AtomName;
    p++;
    while (*p)
    {
        if ((*p < L'0') || (*p > L'9'))
            return FALSE;
        p++;
    }

    p = AtomName;
    p++;
    RtlInitUnicodeString(&AtomString, p);

    DPRINT("AtomString: %wZ\n", &AtomString);

    RtlUnicodeStringToInteger(&AtomString, 10, &LongValue);

    DPRINT("LongValue: %lu\n", LongValue);

    *AtomValue = (USHORT)(LongValue & 0x0000FFFF);

    return TRUE;
}
