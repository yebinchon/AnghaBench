
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _cms_typehandler_struct {int dummy; } ;
typedef int cmsUInt32Number ;
typedef int cmsTagTypeSignature ;
typedef int cmsMLU ;
typedef int cmsIOHANDLER ;
typedef int cmsContext ;
typedef int cmsBool ;


 int FALSE ;
 scalar_t__ Type_MLU_Read (int ,struct _cms_typehandler_struct*,int *,int *,int ) ;
 scalar_t__ Type_Text_Description_Read (int ,struct _cms_typehandler_struct*,int *,int *,int ) ;
 scalar_t__ Type_Text_Read (int ,struct _cms_typehandler_struct*,int *,int *,int ) ;
 int _cmsReadTypeBase (int ,int *) ;
 int cmsMLUfree (int ,int *) ;




__attribute__((used)) static
cmsBool ReadEmbeddedText(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsMLU** mlu, cmsUInt32Number SizeOfTag)
{
    cmsTagTypeSignature BaseType;
    cmsUInt32Number nItems;

    BaseType = _cmsReadTypeBase(ContextID, io);

    switch (BaseType) {

       case 128:
           if (*mlu) cmsMLUfree(ContextID, *mlu);
           *mlu = (cmsMLU*)Type_Text_Read(ContextID, self, io, &nItems, SizeOfTag);
           return (*mlu != ((void*)0));

       case 129:
           if (*mlu) cmsMLUfree(ContextID, *mlu);
           *mlu = (cmsMLU*) Type_Text_Description_Read(ContextID, self, io, &nItems, SizeOfTag);
           return (*mlu != ((void*)0));





       case 130:
           if (*mlu) cmsMLUfree(ContextID, *mlu);
           *mlu = (cmsMLU*) Type_MLU_Read(ContextID, self, io, &nItems, SizeOfTag);
           return (*mlu != ((void*)0));

       default: return FALSE;
    }
}
