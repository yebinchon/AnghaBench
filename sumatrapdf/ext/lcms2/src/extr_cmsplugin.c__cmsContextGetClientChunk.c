
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct _cmsContext_struct {void** chunks; } ;
typedef int cmsContext ;
typedef size_t _cmsMemoryClient ;
struct TYPE_2__ {void** chunks; } ;


 size_t MemoryClientMax ;
 size_t UserPtr ;
 int _cmsAssert (int ) ;
 struct _cmsContext_struct* _cmsGetContext (int ) ;
 int cmsERROR_INTERNAL ;
 int cmsSignalError (int ,int ,char*) ;
 TYPE_1__ globalContext ;

void* _cmsContextGetClientChunk(cmsContext ContextID, _cmsMemoryClient mc)
{
    struct _cmsContext_struct* ctx;
    void *ptr;

    if ((int) mc < 0 || mc >= MemoryClientMax) {

           cmsSignalError(ContextID, cmsERROR_INTERNAL, "Bad context client -- possible corruption");


           _cmsAssert(0);


           return globalContext.chunks[UserPtr];
    }

    ctx = _cmsGetContext(ContextID);
    ptr = ctx ->chunks[mc];

    if (ptr != ((void*)0))
        return ptr;



    return globalContext.chunks[mc];
}
