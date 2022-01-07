
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct _cms_typehandler_struct {int dummy; } ;
typedef int cmsUInt8Number ;
typedef int cmsUInt32Number ;
struct TYPE_7__ {int (* Read ) (int ,TYPE_1__*,int ,int,int) ;} ;
typedef TYPE_1__ cmsIOHANDLER ;
struct TYPE_8__ {int len; int data; int flag; } ;
typedef TYPE_2__ cmsICCData ;
typedef int cmsContext ;


 int INT_MAX ;
 int _cmsFree (int ,TYPE_2__*) ;
 scalar_t__ _cmsMalloc (int ,int) ;
 int _cmsReadUInt32Number (int ,TYPE_1__*,int *) ;
 int cmsUNUSED_PARAMETER (struct _cms_typehandler_struct*) ;
 int stub1 (int ,TYPE_1__*,int ,int,int) ;

__attribute__((used)) static
void *Type_Data_Read(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsUInt32Number* nItems, cmsUInt32Number SizeOfTag)
{
    cmsICCData* BinData;
    cmsUInt32Number LenOfData;
    cmsUNUSED_PARAMETER(self);

    *nItems = 0;

    if (SizeOfTag < sizeof(cmsUInt32Number)) return ((void*)0);

    LenOfData = SizeOfTag - sizeof(cmsUInt32Number);
    if (LenOfData > INT_MAX) return ((void*)0);

    BinData = (cmsICCData*) _cmsMalloc(ContextID, sizeof(cmsICCData) + LenOfData - 1);
    if (BinData == ((void*)0)) return ((void*)0);

    BinData ->len = LenOfData;
    if (!_cmsReadUInt32Number(ContextID, io, &BinData->flag)) {
        _cmsFree(ContextID, BinData);
        return ((void*)0);
    }

    if (io -> Read(ContextID, io, BinData ->data, sizeof(cmsUInt8Number), LenOfData) != LenOfData) {

        _cmsFree(ContextID, BinData);
        return ((void*)0);
    }

    *nItems = 1;

    return (void*) BinData;
}
