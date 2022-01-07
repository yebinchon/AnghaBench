
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * UnlockMutexPtr; int * LockMutexPtr; int * DestroyMutexPtr; int * CreateMutexPtr; } ;
typedef TYPE_1__ cmsPluginMutex ;
typedef int cmsPluginBase ;
typedef int cmsContext ;
typedef int cmsBool ;
struct TYPE_4__ {int * UnlockMutexPtr; int * LockMutexPtr; int * DestroyMutexPtr; int * CreateMutexPtr; } ;
typedef TYPE_2__ _cmsMutexPluginChunkType ;


 int FALSE ;
 int MutexPlugin ;
 int TRUE ;
 scalar_t__ _cmsContextGetClientChunk (int ,int ) ;

cmsBool _cmsRegisterMutexPlugin(cmsContext ContextID, cmsPluginBase* Data)
{
    cmsPluginMutex* Plugin = (cmsPluginMutex*) Data;
    _cmsMutexPluginChunkType* ctx = ( _cmsMutexPluginChunkType*) _cmsContextGetClientChunk(ContextID, MutexPlugin);

    if (Data == ((void*)0)) {


        ctx->CreateMutexPtr = ((void*)0);
        ctx->DestroyMutexPtr = ((void*)0);
        ctx->LockMutexPtr = ((void*)0);
        ctx ->UnlockMutexPtr = ((void*)0);
        return TRUE;
    }


    if (Plugin ->CreateMutexPtr == ((void*)0) || Plugin ->DestroyMutexPtr == ((void*)0) ||
        Plugin ->LockMutexPtr == ((void*)0) || Plugin ->UnlockMutexPtr == ((void*)0)) return FALSE;


    ctx->CreateMutexPtr = Plugin->CreateMutexPtr;
    ctx->DestroyMutexPtr = Plugin ->DestroyMutexPtr;
    ctx ->LockMutexPtr = Plugin ->LockMutexPtr;
    ctx ->UnlockMutexPtr = Plugin ->UnlockMutexPtr;


    return TRUE;
}
