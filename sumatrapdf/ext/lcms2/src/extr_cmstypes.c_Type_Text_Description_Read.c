
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct _cms_typehandler_struct {int dummy; } ;
typedef int cmsUInt8Number ;
typedef int cmsUInt32Number ;
typedef char cmsUInt16Number ;
typedef void cmsMLU ;
struct TYPE_9__ {int (* Read ) (int ,TYPE_1__*,char*,int,int) ;} ;
typedef TYPE_1__ cmsIOHANDLER ;
typedef int cmsContext ;


 int _cmsFree (int ,void*) ;
 scalar_t__ _cmsMalloc (int ,int) ;
 int _cmsReadUInt16Number (int ,TYPE_1__*,char*) ;
 int _cmsReadUInt32Number (int ,TYPE_1__*,int*) ;
 int _cmsReadUInt8Number (int ,TYPE_1__*,int *) ;
 void* cmsMLUalloc (int ,int) ;
 int cmsMLUfree (int ,void*) ;
 int cmsMLUsetASCII (int ,void*,int ,int ,char*) ;
 int cmsNoCountry ;
 int cmsNoLanguage ;
 int cmsUNUSED_PARAMETER (struct _cms_typehandler_struct*) ;
 int stub1 (int ,TYPE_1__*,char*,int,int) ;
 int stub2 (int ,TYPE_1__*,char*,int,int) ;
 int stub3 (int ,TYPE_1__*,char*,int,int) ;

__attribute__((used)) static
void *Type_Text_Description_Read(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsUInt32Number* nItems, cmsUInt32Number SizeOfTag)
{
    char* Text = ((void*)0);
    cmsMLU* mlu = ((void*)0);
    cmsUInt32Number AsciiCount;
    cmsUInt32Number i, UnicodeCode, UnicodeCount;
    cmsUInt16Number ScriptCodeCode, Dummy;
    cmsUInt8Number ScriptCodeCount;
    cmsUNUSED_PARAMETER(self);

    *nItems = 0;


    if (SizeOfTag < sizeof(cmsUInt32Number)) return ((void*)0);


    if (!_cmsReadUInt32Number(ContextID, io, &AsciiCount)) return ((void*)0);
    SizeOfTag -= sizeof(cmsUInt32Number);


    if (SizeOfTag < AsciiCount) return ((void*)0);


    mlu = cmsMLUalloc(ContextID, 1);
    if (mlu == ((void*)0)) return ((void*)0);


    Text = (char*) _cmsMalloc(ContextID, AsciiCount + 1);
    if (Text == ((void*)0)) goto Error;


    if (io ->Read(ContextID, io, Text, sizeof(char), AsciiCount) != AsciiCount) goto Error;
    SizeOfTag -= AsciiCount;


    Text[AsciiCount] = 0;


    if (!cmsMLUsetASCII(ContextID, mlu, cmsNoLanguage, cmsNoCountry, Text)) goto Error;
    _cmsFree(ContextID, (void*) Text);
    Text = ((void*)0);


    if (SizeOfTag < 2* sizeof(cmsUInt32Number)) goto Done;
    if (!_cmsReadUInt32Number(ContextID, io, &UnicodeCode)) goto Done;
    if (!_cmsReadUInt32Number(ContextID, io, &UnicodeCount)) goto Done;
    SizeOfTag -= 2* sizeof(cmsUInt32Number);

    if (SizeOfTag < UnicodeCount*sizeof(cmsUInt16Number)) goto Done;

    for (i=0; i < UnicodeCount; i++) {
        if (!io ->Read(ContextID, io, &Dummy, sizeof(cmsUInt16Number), 1)) goto Done;
    }
    SizeOfTag -= UnicodeCount*sizeof(cmsUInt16Number);





    if (SizeOfTag >= sizeof(cmsUInt16Number) + sizeof(cmsUInt8Number) + 67) {

        if (!_cmsReadUInt16Number(ContextID, io, &ScriptCodeCode)) goto Done;
        if (!_cmsReadUInt8Number(ContextID, io, &ScriptCodeCount)) goto Done;


        for (i=0; i < 67; i++) {
            if (!io ->Read(ContextID, io, &Dummy, sizeof(cmsUInt8Number), 1)) goto Error;
        }
    }

Done:

    *nItems = 1;
    return mlu;

Error:
    if (Text) _cmsFree(ContextID, (void*) Text);
    if (mlu) cmsMLUfree(ContextID, mlu);
    return ((void*)0);
}
