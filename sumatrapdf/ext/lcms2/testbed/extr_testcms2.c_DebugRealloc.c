
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int cmsUInt8Number ;
typedef int cmsUInt32Number ;
typedef int cmsContext ;
struct TYPE_2__ {int KeepSize; } ;
typedef TYPE_1__ _cmsMemoryBlock ;


 int DebugFree (int ,void*) ;
 void* DebugMalloc (int ,int ) ;
 int * SIZE_OF_MEM_HEADER ;
 int memmove (void*,void*,int ) ;

__attribute__((used)) static
void * DebugRealloc(cmsContext ContextID, void* Ptr, cmsUInt32Number NewSize)
{
    _cmsMemoryBlock* blk;
    void* NewPtr;
    cmsUInt32Number max_sz;

    NewPtr = DebugMalloc(ContextID, NewSize);
    if (Ptr == ((void*)0)) return NewPtr;

    blk = (_cmsMemoryBlock*) (((cmsUInt8Number*) Ptr) - SIZE_OF_MEM_HEADER);
    max_sz = blk -> KeepSize > NewSize ? NewSize : blk ->KeepSize;
    memmove(NewPtr, Ptr, max_sz);
    DebugFree(ContextID, Ptr);

    return NewPtr;
}
