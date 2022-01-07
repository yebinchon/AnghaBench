
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _cms_typehandler_struct {int ICCVersion; } ;
typedef int cmsMLU ;
typedef int cmsIOHANDLER ;
typedef int cmsContext ;
typedef int cmsBool ;


 int FALSE ;
 int Type_MLU_Write (int ,struct _cms_typehandler_struct*,int *,int *,int) ;
 int Type_Text_Description_Write (int ,struct _cms_typehandler_struct*,int *,int *,int) ;
 int _cmsWriteTypeBase (int ,int *,int ) ;
 int cmsSigMultiLocalizedUnicodeType ;
 int cmsSigTextDescriptionType ;

__attribute__((used)) static
cmsBool SaveDescription(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsMLU* Text)
{
    if (self ->ICCVersion < 0x4000000) {

        if (!_cmsWriteTypeBase(ContextID, io, cmsSigTextDescriptionType)) return FALSE;
        return Type_Text_Description_Write(ContextID, self, io, Text, 1);
    }
    else {
        if (!_cmsWriteTypeBase(ContextID, io, cmsSigMultiLocalizedUnicodeType)) return FALSE;
        return Type_MLU_Write(ContextID, self, io, Text, 1);
    }
}
