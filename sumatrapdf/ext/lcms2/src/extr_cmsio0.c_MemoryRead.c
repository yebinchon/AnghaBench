
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct _cms_io_handler {scalar_t__ stream; } ;
typedef int cmsUInt8Number ;
typedef scalar_t__ cmsUInt32Number ;
typedef int cmsContext ;
struct TYPE_2__ {scalar_t__ Pointer; scalar_t__ Size; int * Block; } ;
typedef TYPE_1__ FILEMEM ;


 int cmsERROR_READ ;
 int cmsSignalError (int ,int ,char*,scalar_t__,scalar_t__) ;
 int memmove (void*,int *,scalar_t__) ;

__attribute__((used)) static
cmsUInt32Number MemoryRead(cmsContext ContextID, struct _cms_io_handler* iohandler, void *Buffer, cmsUInt32Number size, cmsUInt32Number count)
{
    FILEMEM* ResData = (FILEMEM*) iohandler ->stream;
    cmsUInt8Number* Ptr;
    cmsUInt32Number len = size * count;

    if (ResData -> Pointer + len > ResData -> Size){

        len = (ResData -> Size - ResData -> Pointer);
        cmsSignalError(ContextID, cmsERROR_READ, "Read from memory error. Got %d bytes, block should be of %d bytes", len, count * size);
        return 0;
    }

    Ptr = ResData -> Block;
    Ptr += ResData -> Pointer;
    memmove(Buffer, Ptr, len);
    ResData -> Pointer += len;

    return count;
}
