
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int hdc; TYPE_3__* physDev; } ;
typedef TYPE_2__ WINEDC ;
typedef int VOID ;
struct TYPE_8__ {TYPE_1__* funcs; } ;
struct TYPE_6__ {int (* pDeleteDC ) (TYPE_3__*) ;} ;


 int ASSERT (int) ;
 scalar_t__ GDILoObjType_LO_ALTDC_TYPE ;
 scalar_t__ GDILoObjType_LO_METADC16_TYPE ;
 scalar_t__ GDI_HANDLE_GET_TYPE (int ) ;
 int GdiDeleteClientObj (int ) ;
 scalar_t__ GdiGetLDC (int ) ;
 int GdiSetLDC (int ,int *) ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_2__*) ;
 int NtGdiDeleteObjectApp (int ) ;
 int stub1 (TYPE_3__*) ;

VOID
free_dc_ptr(WINEDC* pWineDc)
{

    pWineDc->physDev->funcs->pDeleteDC(pWineDc->physDev);


    if (GDI_HANDLE_GET_TYPE(pWineDc->hdc) == GDILoObjType_LO_ALTDC_TYPE)
    {

        ASSERT((WINEDC*)GdiGetLDC(pWineDc->hdc) == pWineDc);
        GdiSetLDC(pWineDc->hdc, ((void*)0));


        NtGdiDeleteObjectApp(pWineDc->hdc);
    }
    else if (GDI_HANDLE_GET_TYPE(pWineDc->hdc) == GDILoObjType_LO_METADC16_TYPE)
    {
        GdiDeleteClientObj(pWineDc->hdc);
    }


    HeapFree(GetProcessHeap(), 0, pWineDc);
}
