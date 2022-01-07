
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct _cms_typehandler_struct {int dummy; } ;
typedef int cmsUInt8Number ;
typedef int cmsUInt32Number ;
typedef int cmsMLU ;
struct TYPE_5__ {int (* Read ) (int ,TYPE_1__*,char*,int,int) ;} ;
typedef TYPE_1__ cmsIOHANDLER ;
typedef int cmsContext ;
typedef int cmsBool ;


 int FALSE ;
 int TRUE ;
 int UINT_MAX ;
 int _cmsFree (int ,char*) ;
 scalar_t__ _cmsMalloc (int ,int) ;
 int _cmsReadUInt32Number (int ,TYPE_1__*,int*) ;
 int cmsMLUsetASCII (int ,int *,char*,char const*,char*) ;
 int cmsUNUSED_PARAMETER (struct _cms_typehandler_struct*) ;
 int stub1 (int ,TYPE_1__*,char*,int,int) ;

__attribute__((used)) static
cmsBool ReadCountAndSting(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsMLU* mlu, cmsUInt32Number* SizeOfTag, const char* Section)
{
    cmsUInt32Number Count;
    char* Text;
    cmsUNUSED_PARAMETER(self);

    if (*SizeOfTag < sizeof(cmsUInt32Number)) return FALSE;

    if (!_cmsReadUInt32Number(ContextID, io, &Count)) return FALSE;

    if (Count > UINT_MAX - sizeof(cmsUInt32Number)) return FALSE;
    if (*SizeOfTag < Count + sizeof(cmsUInt32Number)) return FALSE;

    Text = (char*) _cmsMalloc(ContextID, Count+1);
    if (Text == ((void*)0)) return FALSE;

    if (io ->Read(ContextID, io,Text, sizeof(cmsUInt8Number), Count) != Count) {
        _cmsFree(ContextID, Text);
        return FALSE;
    }

    Text[Count] = 0;

    cmsMLUsetASCII(ContextID, mlu, "PS", Section, Text);
    _cmsFree(ContextID, Text);

    *SizeOfTag -= (Count + sizeof(cmsUInt32Number));
    return TRUE;
}
