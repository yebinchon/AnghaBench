
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct _cms_typehandler_struct {int dummy; } ;
struct TYPE_11__ {int * Desc; TYPE_2__* Bg; TYPE_1__* Ucr; } ;
typedef TYPE_3__ cmsUcrBg ;
typedef int cmsUInt32Number ;
typedef int cmsUInt16Number ;
struct TYPE_12__ {int (* Read ) (int ,TYPE_4__*,char*,int,int) ;} ;
typedef TYPE_4__ cmsIOHANDLER ;
typedef int cmsContext ;
struct TYPE_10__ {int Table16; } ;
struct TYPE_9__ {int Table16; } ;


 int UINT_MAX ;
 int _cmsFree (int ,char*) ;
 scalar_t__ _cmsMalloc (int ,int) ;
 scalar_t__ _cmsMallocZero (int ,int) ;
 int _cmsReadUInt16Array (int ,TYPE_4__*,int,int ) ;
 int _cmsReadUInt32Number (int ,TYPE_4__*,int*) ;
 void* cmsBuildTabulatedToneCurve16 (int ,int,int *) ;
 int * cmsMLUalloc (int ,int) ;
 int cmsMLUsetASCII (int ,int *,int ,int ,char*) ;
 int cmsNoCountry ;
 int cmsNoLanguage ;
 int cmsUNUSED_PARAMETER (struct _cms_typehandler_struct*) ;
 int stub1 (int ,TYPE_4__*,char*,int,int) ;

__attribute__((used)) static
void *Type_UcrBg_Read(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsUInt32Number* nItems, cmsUInt32Number SizeOfTag)
{
    cmsUcrBg* n = (cmsUcrBg*) _cmsMallocZero(ContextID, sizeof(cmsUcrBg));
    cmsUInt32Number CountUcr, CountBg;
    char* ASCIIString;
    cmsUNUSED_PARAMETER(self);

    *nItems = 0;
    if (n == ((void*)0)) return ((void*)0);


    if (!_cmsReadUInt32Number(ContextID, io, &CountUcr)) return ((void*)0);
    if (SizeOfTag < sizeof(cmsUInt32Number)) return ((void*)0);
    SizeOfTag -= sizeof(cmsUInt32Number);

    n ->Ucr = cmsBuildTabulatedToneCurve16(ContextID, CountUcr, ((void*)0));
    if (n ->Ucr == ((void*)0)) return ((void*)0);

    if (!_cmsReadUInt16Array(ContextID, io, CountUcr, n ->Ucr->Table16)) return ((void*)0);
    if (SizeOfTag < sizeof(cmsUInt32Number)) return ((void*)0);
    SizeOfTag -= CountUcr * sizeof(cmsUInt16Number);


    if (!_cmsReadUInt32Number(ContextID, io, &CountBg)) return ((void*)0);
    if (SizeOfTag < sizeof(cmsUInt32Number)) return ((void*)0);
    SizeOfTag -= sizeof(cmsUInt32Number);

    n ->Bg = cmsBuildTabulatedToneCurve16(ContextID, CountBg, ((void*)0));
    if (n ->Bg == ((void*)0)) return ((void*)0);
    if (!_cmsReadUInt16Array(ContextID, io, CountBg, n ->Bg->Table16)) return ((void*)0);
    if (SizeOfTag < CountBg * sizeof(cmsUInt16Number)) return ((void*)0);
    SizeOfTag -= CountBg * sizeof(cmsUInt16Number);
    if (SizeOfTag == UINT_MAX) return ((void*)0);


    n ->Desc = cmsMLUalloc(ContextID, 1);
    if (n ->Desc == ((void*)0)) return ((void*)0);

    ASCIIString = (char*) _cmsMalloc(ContextID, SizeOfTag + 1);
    if (io ->Read(ContextID, io,ASCIIString, sizeof(char), SizeOfTag) != SizeOfTag) return ((void*)0);
    ASCIIString[SizeOfTag] = 0;
    cmsMLUsetASCII(ContextID, n ->Desc, cmsNoLanguage, cmsNoCountry, ASCIIString);
    _cmsFree(ContextID, ASCIIString);

    *nItems = 1;
    return (void*) n;
}
