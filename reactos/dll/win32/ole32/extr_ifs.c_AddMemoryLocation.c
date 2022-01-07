
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int SpyedBlockTableLength; int SpyedAllocationsLeft; int ******* SpyedBlocks; } ;
typedef int **** LPVOID ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 TYPE_1__ Malloc32 ;
 int SetSpyedBlockTableLength (int) ;
 int TRUE ;

__attribute__((used)) static BOOL AddMemoryLocation(LPVOID * pMem)
{
        LPVOID * Current;


        if (!Malloc32.SpyedBlockTableLength && !SetSpyedBlockTableLength(0x1000))
            return FALSE;


 Current = Malloc32.SpyedBlocks;
 while (*Current) {
            Current++;
     if (Current >= Malloc32.SpyedBlocks + Malloc32.SpyedBlockTableLength) {

                DWORD old_length = Malloc32.SpyedBlockTableLength;
                if (!SetSpyedBlockTableLength( Malloc32.SpyedBlockTableLength + 0x1000))
                    return FALSE;
                Current = Malloc32.SpyedBlocks + old_length;
     }
 };


 *Current = pMem;
        Malloc32.SpyedAllocationsLeft++;

        return TRUE;
}
