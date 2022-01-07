
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;
typedef int * PVOID ;
typedef int HGDIOBJ ;
typedef scalar_t__ GDILOOBJTYPE ;


 int ASSERT (int ) ;
 scalar_t__ ConvertObjectType (int ) ;
 int FALSE ;
 scalar_t__ GDILoObjType_LO_ALTDC_TYPE ;
 scalar_t__ GDILoObjType_LO_METADC16_TYPE ;
 scalar_t__ GDILoObjType_LO_METAFILE16_TYPE ;
 scalar_t__ GDILoObjType_LO_METAFILE_TYPE ;
 scalar_t__ GDI_HANDLE_GET_TYPE (int ) ;
 int * GdiGetClientObjLink (int ) ;
 int * GdiGetLDC (int ) ;

PVOID
GDI_GetObjPtr(
    HGDIOBJ hobj,
    WORD wType)
{
    GDILOOBJTYPE eObjType;


    eObjType = ConvertObjectType(wType);
    if ((eObjType == 0) || (GDI_HANDLE_GET_TYPE(hobj) != eObjType))
    {
        return ((void*)0);
    }


    if (eObjType == GDILoObjType_LO_ALTDC_TYPE)
    {

        return GdiGetLDC(hobj);
    }


    if ((eObjType == GDILoObjType_LO_METAFILE_TYPE) ||
        (eObjType == GDILoObjType_LO_METAFILE16_TYPE) ||
        (eObjType == GDILoObjType_LO_METADC16_TYPE))
    {
        return GdiGetClientObjLink(hobj);
    }


    ASSERT(FALSE);
    return ((void*)0);
}
