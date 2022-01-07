
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct _cms_typehandler_struct {int dummy; } ;
struct TYPE_11__ {int Desc; TYPE_2__* Bg; TYPE_1__* Ucr; } ;
typedef TYPE_3__ cmsUcrBg ;
typedef scalar_t__ cmsUInt32Number ;
struct TYPE_12__ {int (* Write ) (int ,TYPE_4__*,scalar_t__,char*) ;} ;
typedef TYPE_4__ cmsIOHANDLER ;
typedef int cmsContext ;
typedef int cmsBool ;
struct TYPE_10__ {int Table16; int nEntries; } ;
struct TYPE_9__ {int Table16; int nEntries; } ;


 int FALSE ;
 int TRUE ;
 int _cmsFree (int ,char*) ;
 scalar_t__ _cmsMalloc (int ,scalar_t__) ;
 int _cmsWriteUInt16Array (int ,TYPE_4__*,int ,int ) ;
 int _cmsWriteUInt32Number (int ,TYPE_4__*,int ) ;
 scalar_t__ cmsMLUgetASCII (int ,int ,int ,int ,char*,scalar_t__) ;
 int cmsNoCountry ;
 int cmsNoLanguage ;
 int cmsUNUSED_PARAMETER (scalar_t__) ;
 int stub1 (int ,TYPE_4__*,scalar_t__,char*) ;

__attribute__((used)) static
cmsBool Type_UcrBg_Write(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, void* Ptr, cmsUInt32Number nItems)
{
    cmsUcrBg* Value = (cmsUcrBg*) Ptr;
    cmsUInt32Number TextSize;
    char* Text;
    cmsUNUSED_PARAMETER(self);


    if (!_cmsWriteUInt32Number(ContextID, io, Value ->Ucr ->nEntries)) return FALSE;
    if (!_cmsWriteUInt16Array(ContextID, io, Value ->Ucr ->nEntries, Value ->Ucr ->Table16)) return FALSE;


    if (!_cmsWriteUInt32Number(ContextID, io, Value ->Bg ->nEntries)) return FALSE;
    if (!_cmsWriteUInt16Array(ContextID, io, Value ->Bg ->nEntries, Value ->Bg ->Table16)) return FALSE;


    TextSize = cmsMLUgetASCII(ContextID, Value ->Desc, cmsNoLanguage, cmsNoCountry, ((void*)0), 0);
    Text = (char*) _cmsMalloc(ContextID, TextSize);
    if (cmsMLUgetASCII(ContextID, Value ->Desc, cmsNoLanguage, cmsNoCountry, Text, TextSize) != TextSize) return FALSE;

    if (!io ->Write(ContextID, io, TextSize, Text)) return FALSE;
    _cmsFree(ContextID, Text);

    return TRUE;

    cmsUNUSED_PARAMETER(nItems);
}
