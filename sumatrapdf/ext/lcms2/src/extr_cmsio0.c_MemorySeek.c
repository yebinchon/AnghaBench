
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct _cms_io_handler {scalar_t__ stream; } ;
typedef scalar_t__ cmsUInt32Number ;
typedef int cmsContext ;
typedef int cmsBool ;
struct TYPE_2__ {scalar_t__ Size; scalar_t__ Pointer; } ;
typedef TYPE_1__ FILEMEM ;


 int FALSE ;
 int TRUE ;
 int cmsERROR_SEEK ;
 int cmsSignalError (int ,int ,char*) ;

__attribute__((used)) static
cmsBool MemorySeek(cmsContext ContextID, struct _cms_io_handler* iohandler, cmsUInt32Number offset)
{
    FILEMEM* ResData = (FILEMEM*) iohandler ->stream;

    if (offset > ResData ->Size) {
        cmsSignalError(ContextID, cmsERROR_SEEK, "Too few data; probably corrupted profile");
        return FALSE;
    }

    ResData ->Pointer = offset;
    return TRUE;
}
