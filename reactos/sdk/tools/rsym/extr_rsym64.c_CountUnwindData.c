
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


struct TYPE_20__ {scalar_t__ Scope; scalar_t__ TryLevel; scalar_t__ FramePtr; } ;
struct TYPE_19__ {scalar_t__ CiePointer; scalar_t__ Length; } ;
struct TYPE_18__ {char* Instructions; char* Next; } ;
struct TYPE_16__ {TYPE_2__* psh; TYPE_6__* p; } ;
struct TYPE_17__ {scalar_t__ cScopes; scalar_t__ cUWOP; scalar_t__ cFuncs; TYPE_3__ eh_frame; } ;
struct TYPE_14__ {int VirtualSize; } ;
struct TYPE_15__ {TYPE_1__ Misc; } ;
typedef TYPE_4__* PFILE_INFO ;
typedef TYPE_5__ DW2FDE ;
typedef TYPE_6__ DW2CIEFDE ;
typedef TYPE_7__ DW2CFSTATE ;


 int DwDecodeFde (TYPE_5__*,char*) ;
 int DwExecIntruction (TYPE_7__*,char*) ;
 TYPE_6__* NextCIE (TYPE_6__*) ;
 scalar_t__ StoreUnwindCodes (int *,TYPE_7__*,int ) ;

void
CountUnwindData(PFILE_INFO File)
{
    DW2CIEFDE *p;
    DW2FDE Fde;
    char *pInst, *pmax;
    DW2CFSTATE State;

    File->cFuncs = 0;
    File->cScopes = 0;
    File->cUWOP = 0;
    State.FramePtr = 0;
    State.TryLevel = 0;

    p = File->eh_frame.p;
    pmax = (char*)p + File->eh_frame.psh->Misc.VirtualSize;
    for (; p->Length && (char*)p < pmax; p = NextCIE(p))
    {

        if (p->CiePointer != 0)
        {
            File->cFuncs++;
            DwDecodeFde(&Fde, (char*)p);

            pInst = Fde.Instructions;
            while (pInst < Fde.Next)
            {
                pInst += DwExecIntruction(&State, pInst);
                File->cUWOP += StoreUnwindCodes(((void*)0), &State, 0);
                File->cScopes += State.Scope ? 1 : 0;
            }
        }
    }

    return;
}
