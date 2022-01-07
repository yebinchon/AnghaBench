
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct _cms_typehandler_struct {int dummy; } ;
typedef scalar_t__ cmsUInt32Number ;
typedef int cmsMLU ;
struct TYPE_5__ {int (* Write ) (int ,TYPE_1__*,scalar_t__,char*) ;} ;
typedef TYPE_1__ cmsIOHANDLER ;
typedef int cmsContext ;
typedef int cmsBool ;


 int FALSE ;
 int TRUE ;
 int _cmsFree (int ,char*) ;
 scalar_t__ _cmsMalloc (int ,scalar_t__) ;
 int _cmsWriteUInt32Number (int ,TYPE_1__*,scalar_t__) ;
 scalar_t__ cmsMLUgetASCII (int ,int *,char*,char const*,char*,scalar_t__) ;
 int cmsUNUSED_PARAMETER (struct _cms_typehandler_struct*) ;
 int stub1 (int ,TYPE_1__*,scalar_t__,char*) ;

__attribute__((used)) static
cmsBool WriteCountAndSting(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsMLU* mlu, const char* Section)
{
 cmsUInt32Number TextSize;
 char* Text;
 cmsUNUSED_PARAMETER(self);

    TextSize = cmsMLUgetASCII(ContextID, mlu, "PS", Section, ((void*)0), 0);
    Text = (char*) _cmsMalloc(ContextID, TextSize);

    if (!_cmsWriteUInt32Number(ContextID, io, TextSize)) return FALSE;

    if (cmsMLUgetASCII(ContextID, mlu, "PS", Section, Text, TextSize) == 0) return FALSE;

    if (!io ->Write(ContextID, io, TextSize, Text)) return FALSE;
    _cmsFree(ContextID, Text);

    return TRUE;
}
