
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINEDC ;
typedef int HDC ;


 scalar_t__ GDILoObjType_LO_ALTDC_TYPE ;
 scalar_t__ GDILoObjType_LO_METADC16_TYPE ;
 scalar_t__ GDI_HANDLE_GET_TYPE (int ) ;
 int * GdiGetClientObjLink (int ) ;
 scalar_t__ GdiGetLDC (int ) ;

WINEDC*
get_dc_ptr(HDC hdc)
{

    if (GDI_HANDLE_GET_TYPE(hdc) == GDILoObjType_LO_ALTDC_TYPE)
    {

        return (WINEDC*)GdiGetLDC(hdc);
    }


    if (GDI_HANDLE_GET_TYPE(hdc) == GDILoObjType_LO_METADC16_TYPE)
    {
        return GdiGetClientObjLink(hdc);
    }

    return ((void*)0);
}
