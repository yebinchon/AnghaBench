
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdi_obj_funcs {int dummy; } ;
typedef int WORD ;
typedef int PVOID ;
typedef int * HGDIOBJ ;
typedef scalar_t__ GDILOOBJTYPE ;


 int ASSERT (int ) ;
 scalar_t__ ConvertObjectType (int ) ;
 int FALSE ;
 scalar_t__ GDILoObjType_LO_METADC16_TYPE ;
 scalar_t__ GDILoObjType_LO_METAFILE16_TYPE ;
 scalar_t__ GDILoObjType_LO_METAFILE_TYPE ;
 int * GdiCreateClientObj (int ,scalar_t__) ;

HGDIOBJ
alloc_gdi_handle(
    PVOID pvObject,
    WORD wType,
    const struct gdi_obj_funcs *funcs)
{
    GDILOOBJTYPE eObjType;


    eObjType = ConvertObjectType(wType);
    if ((eObjType != GDILoObjType_LO_METAFILE_TYPE) &&
        (eObjType != GDILoObjType_LO_METAFILE16_TYPE) &&
        (eObjType != GDILoObjType_LO_METADC16_TYPE))
    {

        ASSERT(FALSE);
        return ((void*)0);
    }


    return GdiCreateClientObj(pvObject, eObjType);
}
