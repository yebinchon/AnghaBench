
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct _cms_typehandler_struct {int dummy; } ;
typedef int cmsUInt32Number ;
typedef int cmsMLU ;
struct TYPE_4__ {int (* Read ) (int ,TYPE_1__*,char*,int,int) ;} ;
typedef TYPE_1__ cmsIOHANDLER ;
typedef int cmsContext ;


 int UINT_MAX ;
 int _cmsFree (int ,char*) ;
 scalar_t__ _cmsMalloc (int ,int) ;
 int * cmsMLUalloc (int ,int) ;
 int cmsMLUfree (int ,int *) ;
 int cmsMLUsetASCII (int ,int *,int ,int ,char*) ;
 int cmsNoCountry ;
 int cmsNoLanguage ;
 int cmsUNUSED_PARAMETER (struct _cms_typehandler_struct*) ;
 int stub1 (int ,TYPE_1__*,char*,int,int) ;

__attribute__((used)) static
void *Type_Text_Read(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsUInt32Number* nItems, cmsUInt32Number SizeOfTag)
{
    char* Text = ((void*)0);
    cmsMLU* mlu = ((void*)0);
    cmsUNUSED_PARAMETER(self);


    mlu = cmsMLUalloc(ContextID, 1);
    if (mlu == ((void*)0)) return ((void*)0);

    *nItems = 0;


    if (SizeOfTag == UINT_MAX) goto Error;

    Text = (char*) _cmsMalloc(ContextID, SizeOfTag + 1);
    if (Text == ((void*)0)) goto Error;

    if (io -> Read(ContextID, io, Text, sizeof(char), SizeOfTag) != SizeOfTag) goto Error;


    Text[SizeOfTag] = 0;
    *nItems = 1;


    if (!cmsMLUsetASCII(ContextID, mlu, cmsNoLanguage, cmsNoCountry, Text)) goto Error;

    _cmsFree(ContextID, Text);
    return (void*) mlu;

Error:
    if (mlu != ((void*)0))
        cmsMLUfree(ContextID, mlu);
    if (Text != ((void*)0))
        _cmsFree(ContextID, Text);

    return ((void*)0);
}
