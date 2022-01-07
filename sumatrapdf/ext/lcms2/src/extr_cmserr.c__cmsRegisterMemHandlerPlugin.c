
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct _cmsContext_struct {int DefaultMemoryManager; void** chunks; } ;
struct TYPE_3__ {int * ReallocPtr; int * FreePtr; int * MallocPtr; } ;
typedef TYPE_1__ cmsPluginMemHandler ;
typedef int cmsPluginBase ;
typedef int * cmsContext ;
typedef int cmsBool ;
typedef int _cmsMemPluginChunkType ;


 int FALSE ;
 size_t MemPlugin ;
 int TRUE ;
 scalar_t__ _cmsContextGetClientChunk (int *,size_t) ;
 int _cmsInstallAllocFunctions (TYPE_1__*,int *) ;

cmsBool _cmsRegisterMemHandlerPlugin(cmsContext ContextID, cmsPluginBase *Data)
{
    cmsPluginMemHandler* Plugin = (cmsPluginMemHandler*) Data;
    _cmsMemPluginChunkType* ptr;




    if (Data == ((void*)0)) {

       struct _cmsContext_struct* ctx = ( struct _cmsContext_struct*) ContextID;


        if (ContextID != ((void*)0)) {
            ctx->chunks[MemPlugin] = (void*) &ctx->DefaultMemoryManager;
        }
        return TRUE;
    }


    if (Plugin -> MallocPtr == ((void*)0) ||
        Plugin -> FreePtr == ((void*)0) ||
        Plugin -> ReallocPtr == ((void*)0)) return FALSE;


    ptr = (_cmsMemPluginChunkType*) _cmsContextGetClientChunk(ContextID, MemPlugin);
    if (ptr == ((void*)0))
        return FALSE;

    _cmsInstallAllocFunctions(Plugin, ptr);
    return TRUE;
}
