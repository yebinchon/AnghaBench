
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct _cms_typehandler_struct {int dummy; } ;
typedef int cmsUInt32Number ;
typedef int cmsUInt16Number ;
typedef int cmsIOHANDLER ;
typedef int cmsContext ;
struct TYPE_7__ {double Y; int y; int x; } ;
struct TYPE_6__ {double Y; int y; int x; } ;
struct TYPE_5__ {double Y; int y; int x; } ;
struct TYPE_8__ {TYPE_3__ Blue; TYPE_2__ Green; TYPE_1__ Red; } ;
typedef TYPE_4__ cmsCIExyYTRIPLE ;


 int _cmsFree (int ,void*) ;
 scalar_t__ _cmsMallocZero (int ,int) ;
 int _cmsRead15Fixed16Number (int ,int *,int *) ;
 int _cmsReadUInt16Number (int ,int *,int*) ;
 int cmsUNUSED_PARAMETER (int) ;

__attribute__((used)) static
void *Type_Chromaticity_Read(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsUInt32Number* nItems, cmsUInt32Number SizeOfTag)
{
    cmsCIExyYTRIPLE* chrm;
    cmsUInt16Number nChans, Table;
    cmsUNUSED_PARAMETER(self);

    *nItems = 0;
    chrm = (cmsCIExyYTRIPLE*) _cmsMallocZero(ContextID, sizeof(cmsCIExyYTRIPLE));
    if (chrm == ((void*)0)) return ((void*)0);

    if (!_cmsReadUInt16Number(ContextID, io, &nChans)) goto Error;


    if (nChans == 0 && SizeOfTag == 32) {

        if (!_cmsReadUInt16Number(ContextID, io, ((void*)0))) goto Error;
        if (!_cmsReadUInt16Number(ContextID, io, &nChans)) goto Error;
    }

    if (nChans != 3) goto Error;

    if (!_cmsReadUInt16Number(ContextID, io, &Table)) goto Error;

    if (!_cmsRead15Fixed16Number(ContextID, io, &chrm ->Red.x)) goto Error;
    if (!_cmsRead15Fixed16Number(ContextID, io, &chrm ->Red.y)) goto Error;

    chrm ->Red.Y = 1.0;

    if (!_cmsRead15Fixed16Number(ContextID, io, &chrm ->Green.x)) goto Error;
    if (!_cmsRead15Fixed16Number(ContextID, io, &chrm ->Green.y)) goto Error;

    chrm ->Green.Y = 1.0;

    if (!_cmsRead15Fixed16Number(ContextID, io, &chrm ->Blue.x)) goto Error;
    if (!_cmsRead15Fixed16Number(ContextID, io, &chrm ->Blue.y)) goto Error;

    chrm ->Blue.Y = 1.0;

    *nItems = 1;
    return (void*) chrm;

Error:
    _cmsFree(ContextID, (void*) chrm);
    return ((void*)0);

    cmsUNUSED_PARAMETER(SizeOfTag);
}
