
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int WCHAR ;
typedef int UINT ;
struct TYPE_4__ {scalar_t__ Length; } ;
struct TYPE_5__ {struct TYPE_5__* Next; TYPE_1__ ExeName; } ;
typedef TYPE_2__* PALIAS_HEADER ;
typedef int BOOLEAN ;



__attribute__((used)) static UINT
IntGetConsoleAliasesExesLength(PALIAS_HEADER RootHeader,
                               BOOLEAN IsUnicode)
{
    UINT Length = 0;

    while (RootHeader)
    {
        Length += RootHeader->ExeName.Length + sizeof(WCHAR);
        RootHeader = RootHeader->Next;
    }





    if (!IsUnicode)
        Length /= sizeof(WCHAR);

    return Length;
}
