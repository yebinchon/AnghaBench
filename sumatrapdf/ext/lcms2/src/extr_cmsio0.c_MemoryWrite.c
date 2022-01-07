
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct _cms_io_handler {scalar_t__ UsedSpace; scalar_t__ stream; } ;
typedef scalar_t__ cmsUInt32Number ;
typedef int cmsContext ;
typedef int cmsBool ;
struct TYPE_2__ {scalar_t__ Pointer; scalar_t__ Size; scalar_t__ Block; } ;
typedef TYPE_1__ FILEMEM ;


 int FALSE ;
 int TRUE ;
 int cmsUNUSED_PARAMETER (int ) ;
 int memmove (scalar_t__,void const*,scalar_t__) ;

__attribute__((used)) static
cmsBool MemoryWrite(cmsContext ContextID, struct _cms_io_handler* iohandler, cmsUInt32Number size, const void *Ptr)
{
    FILEMEM* ResData = (FILEMEM*) iohandler ->stream;
    cmsUNUSED_PARAMETER(ContextID);

    if (ResData == ((void*)0)) return FALSE;


    if (ResData->Pointer + size > ResData->Size) {
        size = ResData ->Size - ResData->Pointer;
    }

    if (size == 0) return TRUE;

    memmove(ResData ->Block + ResData ->Pointer, Ptr, size);
    ResData ->Pointer += size;

    if (ResData ->Pointer > iohandler->UsedSpace)
        iohandler->UsedSpace = ResData ->Pointer;

    return TRUE;
}
