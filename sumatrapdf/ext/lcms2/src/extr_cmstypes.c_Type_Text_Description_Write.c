
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef char wchar_t ;
struct _cms_typehandler_struct {int dummy; } ;
typedef int cmsUInt32Number ;
typedef int cmsMLU ;
struct TYPE_10__ {int (* Write ) (int ,TYPE_1__*,int,char*) ;} ;
typedef TYPE_1__ cmsIOHANDLER ;
typedef int cmsContext ;
typedef int cmsBool ;
typedef int Filler ;


 int FALSE ;
 int TRUE ;
 int _cmsALIGNLONG (int) ;
 scalar_t__ _cmsCalloc (int ,int,int) ;
 scalar_t__ _cmsDupMem (int ,char*,int) ;
 int _cmsFree (int ,char*) ;
 int _cmsWriteUInt16Number (int ,TYPE_1__*,int ) ;
 int _cmsWriteUInt32Number (int ,TYPE_1__*,int) ;
 int _cmsWriteUInt8Number (int ,TYPE_1__*,int ) ;
 int _cmsWriteWCharArray (int ,TYPE_1__*,int,char*) ;
 int cmsMLUgetASCII (int ,int *,int ,int ,char*,int) ;
 int cmsMLUgetWide (int ,int *,int ,int ,char*,int) ;
 int cmsNoCountry ;
 int cmsNoLanguage ;
 int cmsUNUSED_PARAMETER (int) ;
 int memset (char*,int ,int) ;
 scalar_t__ strlen (char*) ;
 int stub1 (int ,TYPE_1__*,int,char*) ;
 int stub2 (int ,TYPE_1__*,int,char*) ;
 int stub3 (int ,TYPE_1__*,int,char*) ;

__attribute__((used)) static
cmsBool Type_Text_Description_Write(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, void* Ptr, cmsUInt32Number nItems)
{
    cmsMLU* mlu = (cmsMLU*) Ptr;
    char *Text = ((void*)0);
    wchar_t *Wide = ((void*)0);
    cmsUInt32Number len, len_text, len_tag_requirement, len_aligned;
    cmsBool rc = FALSE;
    char Filler[68];
    cmsUNUSED_PARAMETER(self);


    memset(Filler, 0, sizeof(Filler));


    len = cmsMLUgetASCII(ContextID, mlu, cmsNoLanguage, cmsNoCountry, ((void*)0), 0);
    if (len <= 0) {

        Text = (char*) _cmsDupMem(ContextID, "", sizeof(char));
        Wide = (wchar_t*) _cmsDupMem(ContextID, L"", sizeof(wchar_t));
    }
    else {

        Text = (char*) _cmsCalloc(ContextID, len, sizeof(char));
        if (Text == ((void*)0)) goto Error;

        Wide = (wchar_t*) _cmsCalloc(ContextID, len, sizeof(wchar_t));
        if (Wide == ((void*)0)) goto Error;


        cmsMLUgetASCII(ContextID, mlu, cmsNoLanguage, cmsNoCountry, Text, len * sizeof(char));
        cmsMLUgetWide(ContextID, mlu, cmsNoLanguage, cmsNoCountry, Wide, len * sizeof(wchar_t));
    }


    len_text = (cmsUInt32Number) strlen(Text) + 1;

    len_tag_requirement = (8+4+len_text+4+4+2*len_text+2+1+67);
    len_aligned = _cmsALIGNLONG(len_tag_requirement);
    if (!_cmsWriteUInt32Number(ContextID, io, len_text)) goto Error;
    if (!io ->Write(ContextID, io, len_text, Text)) goto Error;

    if (!_cmsWriteUInt32Number(ContextID, io, 0)) goto Error;

    if (!_cmsWriteUInt32Number(ContextID, io, len_text)) goto Error;

    if (!_cmsWriteWCharArray(ContextID, io, len_text, Wide)) goto Error;


    if (!_cmsWriteUInt16Number(ContextID, io, 0)) goto Error;
    if (!_cmsWriteUInt8Number(ContextID, io, 0)) goto Error;

    if (!io ->Write(ContextID, io, 67, Filler)) goto Error;


    if(len_aligned - len_tag_requirement > 0)
      if (!io ->Write(ContextID, io, len_aligned - len_tag_requirement, Filler)) goto Error;

    rc = TRUE;

Error:
    if (Text) _cmsFree(ContextID, Text);
    if (Wide) _cmsFree(ContextID, Wide);

    return rc;

    cmsUNUSED_PARAMETER(nItems);
}
