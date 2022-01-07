
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t Address; } ;
struct TYPE_4__ {int SymbolsOffset; int SymbolsLength; } ;
typedef int ROSSYM_ENTRY ;
typedef TYPE_1__* PSYMBOLFILE_HEADER ;
typedef TYPE_2__* PROSSYM_ENTRY ;



PROSSYM_ENTRY
find_offset(void *data, size_t offset)
{
    PSYMBOLFILE_HEADER RosSymHeader = (PSYMBOLFILE_HEADER)data;
    PROSSYM_ENTRY Entries = (PROSSYM_ENTRY)((char *)data + RosSymHeader->SymbolsOffset);
    size_t symbols = RosSymHeader->SymbolsLength / sizeof(ROSSYM_ENTRY);
    size_t i;

    for (i = 0; i < symbols; i++)
    {
        if (Entries[i].Address > offset)
        {
            if (!i--)
                return ((void*)0);
            else
                return &Entries[i];
        }
    }
    return ((void*)0);
}
