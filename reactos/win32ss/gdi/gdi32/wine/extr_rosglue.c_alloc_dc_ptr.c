
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ WORD ;
struct TYPE_9__ {int * hdc; int * next; int * funcs; } ;
struct TYPE_10__ {int refcount; int * hdc; TYPE_1__ NullPhysDev; TYPE_1__* physDev; int iType; void* hPalette; void* hPen; void* hBrush; void* hFont; } ;
typedef TYPE_2__ WINEDC ;


 int ASSERT (int ) ;
 int BLACK_PEN ;
 int DEFAULT_PALETTE ;
 int DummyPhysDevFuncs ;
 int FALSE ;
 int GDILoObjType_LO_METADC16_TYPE ;
 int * GdiCreateClientObj (TYPE_2__*,int ) ;
 int GdiSetLDC (int *,TYPE_2__*) ;
 int GetProcessHeap () ;
 void* GetStockObject (int ) ;
 TYPE_2__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_2__*) ;
 int LDC_EMFLDC ;
 int * NtGdiCreateMetafileDC (int *) ;
 scalar_t__ OBJ_ENHMETADC ;
 scalar_t__ OBJ_METADC ;
 int SYSTEM_FONT ;
 int WHITE_BRUSH ;
 int ZeroMemory (TYPE_2__*,int) ;

WINEDC*
alloc_dc_ptr(WORD magic)
{
    WINEDC* pWineDc;


    pWineDc = HeapAlloc(GetProcessHeap(), 0, sizeof(*pWineDc));
    if (pWineDc == ((void*)0))
    {
        return ((void*)0);
    }

    ZeroMemory(pWineDc, sizeof(*pWineDc));
    pWineDc->refcount = 1;
    pWineDc->hFont = GetStockObject(SYSTEM_FONT);
    pWineDc->hBrush = GetStockObject(WHITE_BRUSH);
    pWineDc->hPen = GetStockObject(BLACK_PEN);
    pWineDc->hPalette = GetStockObject(DEFAULT_PALETTE);

    if (magic == OBJ_ENHMETADC)
    {


        pWineDc->hdc = NtGdiCreateMetafileDC(((void*)0));
        if (pWineDc->hdc == ((void*)0))
        {
            HeapFree(GetProcessHeap(), 0, pWineDc);
            return ((void*)0);
        }

        pWineDc->iType = LDC_EMFLDC;


        GdiSetLDC(pWineDc->hdc, pWineDc);
    }
    else if (magic == OBJ_METADC)
    {
        pWineDc->hdc = GdiCreateClientObj(pWineDc, GDILoObjType_LO_METADC16_TYPE);
        if (pWineDc->hdc == ((void*)0))
        {
            HeapFree(GetProcessHeap(), 0, pWineDc);
            return ((void*)0);
        }
    }
    else
    {

        ASSERT(FALSE);
    }

    pWineDc->physDev = &pWineDc->NullPhysDev;
    pWineDc->NullPhysDev.funcs = &DummyPhysDevFuncs;
    pWineDc->NullPhysDev.next = ((void*)0);

    pWineDc->NullPhysDev.hdc = pWineDc->hdc;
    return pWineDc;
}
