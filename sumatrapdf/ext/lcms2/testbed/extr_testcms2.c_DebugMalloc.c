
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int cmsUInt8Number ;
typedef scalar_t__ cmsUInt32Number ;
typedef int cmsContext ;
struct TYPE_2__ {scalar_t__ DontCheck; int WhoAllocated; scalar_t__ KeepSize; } ;
typedef TYPE_1__ _cmsMemoryBlock ;


 int Die (char*) ;
 scalar_t__ MaxAllocated ;
 scalar_t__ SIZE_OF_MEM_HEADER ;
 scalar_t__ SingleHit ;
 scalar_t__ TotalMemory ;
 scalar_t__ malloc (scalar_t__) ;

__attribute__((used)) static
void* DebugMalloc(cmsContext ContextID, cmsUInt32Number size)
{
    _cmsMemoryBlock* blk;

    if (size <= 0) {
       Die("malloc requested with zero bytes");
    }

    TotalMemory += size;

    if (TotalMemory > MaxAllocated)
        MaxAllocated = TotalMemory;

    if (size > SingleHit)
        SingleHit = size;

    blk = (_cmsMemoryBlock*) malloc(size + SIZE_OF_MEM_HEADER);
    if (blk == ((void*)0)) return ((void*)0);

    blk ->KeepSize = size;
    blk ->WhoAllocated = ContextID;
    blk ->DontCheck = 0;

    return (void*) ((cmsUInt8Number*) blk + SIZE_OF_MEM_HEADER);
}
