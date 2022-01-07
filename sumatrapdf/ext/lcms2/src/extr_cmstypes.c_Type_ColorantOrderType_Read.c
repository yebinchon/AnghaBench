
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct _cms_typehandler_struct {int dummy; } ;
typedef int cmsUInt8Number ;
typedef int cmsUInt32Number ;
struct TYPE_5__ {int (* Read ) (int ,TYPE_1__*,int *,int,int) ;} ;
typedef TYPE_1__ cmsIOHANDLER ;
typedef int cmsContext ;


 scalar_t__ _cmsCalloc (int ,int,int) ;
 int _cmsFree (int ,void*) ;
 int _cmsReadUInt32Number (int ,TYPE_1__*,int*) ;
 int cmsMAXCHANNELS ;
 int cmsUNUSED_PARAMETER (int) ;
 int memset (int *,int,int) ;
 int stub1 (int ,TYPE_1__*,int *,int,int) ;

__attribute__((used)) static
void *Type_ColorantOrderType_Read(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsUInt32Number* nItems, cmsUInt32Number SizeOfTag)
{
    cmsUInt8Number* ColorantOrder;
    cmsUInt32Number Count;
    cmsUNUSED_PARAMETER(self);

    *nItems = 0;
    if (!_cmsReadUInt32Number(ContextID, io, &Count)) return ((void*)0);
    if (Count > cmsMAXCHANNELS) return ((void*)0);

    ColorantOrder = (cmsUInt8Number*) _cmsCalloc(ContextID, cmsMAXCHANNELS, sizeof(cmsUInt8Number));
    if (ColorantOrder == ((void*)0)) return ((void*)0);


    memset(ColorantOrder, 0xFF, cmsMAXCHANNELS * sizeof(cmsUInt8Number));

    if (io ->Read(ContextID, io, ColorantOrder, sizeof(cmsUInt8Number), Count) != Count) {

        _cmsFree(ContextID, (void*) ColorantOrder);
        return ((void*)0);
    }

    *nItems = 1;
    return (void*) ColorantOrder;

    cmsUNUSED_PARAMETER(SizeOfTag);
}
