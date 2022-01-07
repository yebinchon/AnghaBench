
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct _cms_typehandler_struct {int dummy; } ;
typedef struct _cms_typehandler_struct* cmsUInt32Number ;
typedef int cmsIOHANDLER ;
typedef int cmsContext ;
struct TYPE_6__ {int y; int x; } ;
struct TYPE_5__ {int y; int x; } ;
struct TYPE_7__ {int y; int x; } ;
struct TYPE_8__ {TYPE_2__ Blue; TYPE_1__ Green; TYPE_3__ Red; } ;
typedef TYPE_4__ cmsCIExyYTRIPLE ;
typedef int cmsBool ;


 int FALSE ;
 int SaveOneChromaticity (int ,int ,int ,int *) ;
 int TRUE ;
 int _cmsWriteUInt16Number (int ,int *,int) ;
 int cmsUNUSED_PARAMETER (struct _cms_typehandler_struct*) ;

__attribute__((used)) static
cmsBool Type_Chromaticity_Write(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, void* Ptr, cmsUInt32Number nItems)
{
    cmsCIExyYTRIPLE* chrm = (cmsCIExyYTRIPLE*) Ptr;

    if (!_cmsWriteUInt16Number(ContextID, io, 3)) return FALSE;
    if (!_cmsWriteUInt16Number(ContextID, io, 0)) return FALSE;

    if (!SaveOneChromaticity(ContextID, chrm -> Red.x, chrm -> Red.y, io)) return FALSE;
    if (!SaveOneChromaticity(ContextID, chrm -> Green.x, chrm -> Green.y, io)) return FALSE;
    if (!SaveOneChromaticity(ContextID, chrm -> Blue.x, chrm -> Blue.y, io)) return FALSE;

    return TRUE;

    cmsUNUSED_PARAMETER(nItems);
    cmsUNUSED_PARAMETER(self);
}
