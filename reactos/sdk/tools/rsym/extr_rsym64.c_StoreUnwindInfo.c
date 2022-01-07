
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int UNWIND_CODE ;
typedef int ULONG ;
struct TYPE_20__ {int Location; unsigned long cScopes; TYPE_2__* SehBlock; scalar_t__ IsUwop; scalar_t__ TryLevel; scalar_t__ FramePtr; } ;
struct TYPE_19__ {char* Instructions; char* Next; } ;
struct TYPE_18__ {unsigned long NumEntries; TYPE_1__* Entry; } ;
struct TYPE_17__ {char* Instructions; char* Next; int CiePointer; } ;
struct TYPE_16__ {int Version; int SizeOfProlog; int Flags; scalar_t__ FrameOffset; scalar_t__ FrameRegister; scalar_t__ CountOfCodes; } ;
struct TYPE_15__ {int Target; int EndTry; int BeginTry; } ;
struct TYPE_14__ {int Handler; int Target; int End; int Begin; } ;
typedef TYPE_3__* PUNWIND_INFO ;
typedef TYPE_4__* PDW2FDE ;
typedef TYPE_5__* PC_SCOPE_TABLE ;
typedef TYPE_6__ DW2CIE ;
typedef TYPE_7__ DW2CFSTATE ;
typedef int C_SCOPE_TABLE_ENTRY ;


 int DwDecodeCie (TYPE_6__*,int ) ;
 int DwExecIntruction (TYPE_7__*,char*) ;
 int ROUND_UP (int,int) ;
 int StoreUnwindCodes (TYPE_3__*,TYPE_7__*,int) ;
 int UNW_FLAG_EHANDLER ;

ULONG
StoreUnwindInfo(PUNWIND_INFO Info, PDW2FDE pFde, ULONG FunctionStart)
{
    ULONG cbSize;
    DW2CFSTATE State;
    char *pInst;
    ULONG c;
    DW2CIE Cie;

    cbSize = 4;
    Info->Version = 1;
    Info->Flags = 0;
    Info->SizeOfProlog = 0;
    Info->CountOfCodes = 0;
    Info->FrameRegister = 0;
    Info->FrameOffset = 0;


    DwDecodeCie(&Cie, pFde->CiePointer);


    State.Location = FunctionStart;
    State.FramePtr = 0;
    State.TryLevel = 0;
    State.cScopes = 0;


    pInst = Cie.Instructions;
    while (pInst < Cie.Next)
    {
        pInst += DwExecIntruction(&State, pInst);
    }


    pInst = pFde->Instructions;
    while (pInst < pFde->Next)
    {
        pInst += DwExecIntruction(&State, pInst);

        if (State.IsUwop)
        {
            c = StoreUnwindCodes(Info, &State, FunctionStart);
            cbSize += c * sizeof(UNWIND_CODE);
            Info->SizeOfProlog = State.Location - FunctionStart;
        }
    }
    cbSize = ROUND_UP(cbSize, 4);


    if (State.cScopes > 0)
    {
        unsigned long i;
        ULONG *pExceptionHandler;
        PC_SCOPE_TABLE pScopeTable;


        Info->Flags |= UNW_FLAG_EHANDLER;


        pExceptionHandler = (ULONG*)((char*)Info + cbSize);

        *pExceptionHandler = FunctionStart;

        pScopeTable = (PC_SCOPE_TABLE)(pExceptionHandler + 1);
        pScopeTable->NumEntries = State.cScopes;


        for (i = 0; i < State.cScopes; i++)
        {
            pScopeTable->Entry[i].Begin = State.SehBlock[i].BeginTry;
            pScopeTable->Entry[i].End = State.SehBlock[i].EndTry;
            pScopeTable->Entry[i].Handler = 1;
            pScopeTable->Entry[i].Target = State.SehBlock[i].Target;
        }


        cbSize += 8 + State.cScopes * sizeof(C_SCOPE_TABLE_ENTRY);
    }

    return cbSize;
}
