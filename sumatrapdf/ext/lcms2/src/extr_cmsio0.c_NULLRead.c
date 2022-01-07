
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int cmsUInt32Number ;
struct TYPE_4__ {scalar_t__ stream; } ;
typedef TYPE_1__ cmsIOHANDLER ;
typedef void* cmsContext ;
struct TYPE_5__ {int Pointer; } ;
typedef TYPE_2__ FILENULL ;


 int cmsUNUSED_PARAMETER (void*) ;

__attribute__((used)) static
cmsUInt32Number NULLRead(cmsContext ContextID, cmsIOHANDLER* iohandler, void *Buffer, cmsUInt32Number size, cmsUInt32Number count)
{
    FILENULL* ResData = (FILENULL*) iohandler ->stream;
    cmsUInt32Number len = size * count;
    cmsUNUSED_PARAMETER(ContextID);

    ResData -> Pointer += len;
    return count;

    cmsUNUSED_PARAMETER(Buffer);
}
