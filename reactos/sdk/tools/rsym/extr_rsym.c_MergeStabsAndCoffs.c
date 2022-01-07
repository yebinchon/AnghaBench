
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ ULONG_PTR ;
typedef int ULONG ;
struct TYPE_7__ {scalar_t__ Address; scalar_t__ FileOffset; scalar_t__ FunctionOffset; scalar_t__ SourceLine; } ;
typedef int ROSSYM_ENTRY ;
typedef TYPE_1__* PROSSYM_ENTRY ;


 scalar_t__ CompareSymEntry ;
 int fprintf (int ,char*) ;
 TYPE_1__* malloc (int) ;
 int qsort (TYPE_1__*,int,int,int (*) (void const*,void const*)) ;
 int stderr ;

__attribute__((used)) static int
MergeStabsAndCoffs(ULONG *MergedSymbolCount, PROSSYM_ENTRY *MergedSymbols,
                   ULONG StabSymbolsCount, PROSSYM_ENTRY StabSymbols,
                   ULONG CoffSymbolsCount, PROSSYM_ENTRY CoffSymbols)
{
    ULONG StabIndex, j;
    ULONG CoffIndex;
    ULONG_PTR StabFunctionStartAddress;
    ULONG StabFunctionStringOffset, NewStabFunctionStringOffset, CoffFunctionStringOffset;
    PROSSYM_ENTRY CoffFunctionSymbol;

    *MergedSymbolCount = 0;
    if (StabSymbolsCount == 0)
    {
        *MergedSymbols = ((void*)0);
        return 0;
    }
    *MergedSymbols = malloc((StabSymbolsCount + CoffSymbolsCount) * sizeof(ROSSYM_ENTRY));
    if (*MergedSymbols == ((void*)0))
    {
        fprintf(stderr, "Unable to allocate memory for merged symbols\n");
        return 1;
    }

    StabFunctionStartAddress = 0;
    StabFunctionStringOffset = 0;
    CoffFunctionStringOffset = 0;
    CoffFunctionSymbol = ((void*)0);
    CoffIndex = 0;
    for (StabIndex = 0; StabIndex < StabSymbolsCount; StabIndex++)
    {
        (*MergedSymbols)[*MergedSymbolCount] = StabSymbols[StabIndex];
        for (j = StabIndex + 1;
             j < StabSymbolsCount && StabSymbols[j].Address == StabSymbols[StabIndex].Address;
             j++)
        {
            if (StabSymbols[j].FileOffset != 0 && (*MergedSymbols)[*MergedSymbolCount].FileOffset == 0)
            {
                (*MergedSymbols)[*MergedSymbolCount].FileOffset = StabSymbols[j].FileOffset;
            }
            if (StabSymbols[j].FunctionOffset != 0 && (*MergedSymbols)[*MergedSymbolCount].FunctionOffset == 0)
            {
                (*MergedSymbols)[*MergedSymbolCount].FunctionOffset = StabSymbols[j].FunctionOffset;
            }
            if (StabSymbols[j].SourceLine != 0 && (*MergedSymbols)[*MergedSymbolCount].SourceLine == 0)
            {
                (*MergedSymbols)[*MergedSymbolCount].SourceLine = StabSymbols[j].SourceLine;
            }
        }
        StabIndex = j - 1;

        while (CoffIndex < CoffSymbolsCount &&
               CoffSymbols[CoffIndex].Address <= (*MergedSymbols)[*MergedSymbolCount].Address)
        {
            if (CoffSymbols[CoffIndex].FunctionOffset != 0)
            {
                CoffFunctionSymbol = &CoffSymbols[CoffIndex];
                CoffFunctionStringOffset = CoffFunctionSymbol->FunctionOffset;
            }
            CoffIndex++;
        }
        NewStabFunctionStringOffset = (*MergedSymbols)[*MergedSymbolCount].FunctionOffset;
        if (CoffFunctionSymbol &&
            CoffFunctionSymbol->Address <= (*MergedSymbols)[*MergedSymbolCount].Address &&
            StabFunctionStartAddress < CoffFunctionSymbol->Address)
        {
            (*MergedSymbols)[*MergedSymbolCount].FunctionOffset = CoffFunctionStringOffset;
            CoffFunctionSymbol->FunctionOffset = 0;
        }
        if (StabFunctionStringOffset != NewStabFunctionStringOffset)
        {
            StabFunctionStartAddress = (*MergedSymbols)[*MergedSymbolCount].Address;
        }
        StabFunctionStringOffset = NewStabFunctionStringOffset;
        (*MergedSymbolCount)++;
    }

    for (CoffIndex = 0; CoffIndex < CoffSymbolsCount; CoffIndex++)
    {
        if (CoffSymbols[CoffIndex].Address &&
            CoffSymbols[CoffIndex].FunctionOffset)
        {
            (*MergedSymbols)[*MergedSymbolCount] = CoffSymbols[CoffIndex];
            (*MergedSymbolCount)++;
        }
    }

    qsort(*MergedSymbols, *MergedSymbolCount, sizeof(ROSSYM_ENTRY), (int (*)(const void *, const void *)) CompareSymEntry);

    return 0;
}
