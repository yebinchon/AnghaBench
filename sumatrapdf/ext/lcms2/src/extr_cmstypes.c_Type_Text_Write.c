
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct _cms_typehandler_struct {int dummy; } ;
typedef scalar_t__ cmsUInt32Number ;
typedef int cmsMLU ;
struct TYPE_4__ {int (* Write ) (int ,TYPE_1__*,scalar_t__,char*) ;} ;
typedef TYPE_1__ cmsIOHANDLER ;
typedef int cmsContext ;
typedef int cmsBool ;


 int FALSE ;
 int _cmsFree (int ,char*) ;
 scalar_t__ _cmsMalloc (int ,scalar_t__) ;
 scalar_t__ cmsMLUgetASCII (int ,int *,int ,int ,char*,scalar_t__) ;
 int cmsNoCountry ;
 int cmsNoLanguage ;
 int cmsUNUSED_PARAMETER (scalar_t__) ;
 int stub1 (int ,TYPE_1__*,scalar_t__,char*) ;

__attribute__((used)) static
cmsBool Type_Text_Write(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, void* Ptr, cmsUInt32Number nItems)
{
    cmsMLU* mlu = (cmsMLU*) Ptr;
    cmsUInt32Number size;
    cmsBool rc;
    char* Text;
    cmsUNUSED_PARAMETER(self);


    size = cmsMLUgetASCII(ContextID, mlu, cmsNoLanguage, cmsNoCountry, ((void*)0), 0);
    if (size == 0) return FALSE;


    Text = (char*) _cmsMalloc(ContextID, size);
    if (Text == ((void*)0)) return FALSE;

    cmsMLUgetASCII(ContextID, mlu, cmsNoLanguage, cmsNoCountry, Text, size);


    rc = io ->Write(ContextID, io, size, Text);

    _cmsFree(ContextID, Text);
    return rc;

    cmsUNUSED_PARAMETER(nItems);
}
