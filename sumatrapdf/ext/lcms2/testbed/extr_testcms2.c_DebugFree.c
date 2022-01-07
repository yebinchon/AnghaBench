
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int cmsUInt8Number ;
typedef scalar_t__ cmsContext ;
struct TYPE_3__ {scalar_t__ WhoAllocated; int DontCheck; scalar_t__ KeepSize; } ;
typedef TYPE_1__ _cmsMemoryBlock ;


 int Die (char*) ;
 int * SIZE_OF_MEM_HEADER ;
 int TotalMemory ;
 int free (TYPE_1__*) ;

__attribute__((used)) static
void DebugFree(cmsContext ContextID, void *Ptr)
{
    _cmsMemoryBlock* blk;

    if (Ptr == ((void*)0)) {
        Die("NULL free (which is a no-op in C, but may be an clue of something going wrong)");
    }

    blk = (_cmsMemoryBlock*) (((cmsUInt8Number*) Ptr) - SIZE_OF_MEM_HEADER);
    TotalMemory -= blk ->KeepSize;

    if (blk ->WhoAllocated != ContextID && !blk->DontCheck) {
        Die("Trying to free memory allocated by a different thread");
    }

    free(blk);
}
