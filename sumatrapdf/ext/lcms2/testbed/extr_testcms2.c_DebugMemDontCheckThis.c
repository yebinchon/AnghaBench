
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int cmsUInt8Number ;
struct TYPE_2__ {int DontCheck; } ;
typedef TYPE_1__ _cmsMemoryBlock ;


 int SIZE_OF_MEM_HEADER ;

void DebugMemDontCheckThis(void *Ptr)
{
     _cmsMemoryBlock* blk = (_cmsMemoryBlock*) (((cmsUInt8Number*) Ptr) - SIZE_OF_MEM_HEADER);

     blk ->DontCheck = 1;
}
