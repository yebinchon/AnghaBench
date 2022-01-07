
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int SpyedBlockTableLength; int * SpyedBlocks; } ;
typedef int PVOID ;
typedef int LPVOID ;
typedef int DWORD ;
typedef int BOOL ;


 int LMEM_MOVEABLE ;
 int LMEM_ZEROINIT ;
 int * LocalAlloc (int,int) ;
 int * LocalReAlloc (int *,int,int) ;
 TYPE_1__ Malloc32 ;

__attribute__((used)) static BOOL SetSpyedBlockTableLength ( DWORD NewLength )
{
 LPVOID *NewSpyedBlocks;

 if (!Malloc32.SpyedBlocks) NewSpyedBlocks = LocalAlloc(LMEM_ZEROINIT, NewLength * sizeof(PVOID));
 else NewSpyedBlocks = LocalReAlloc(Malloc32.SpyedBlocks, NewLength * sizeof(PVOID), LMEM_ZEROINIT | LMEM_MOVEABLE);
 if (NewSpyedBlocks) {
  Malloc32.SpyedBlocks = NewSpyedBlocks;
  Malloc32.SpyedBlockTableLength = NewLength;
 }

 return NewSpyedBlocks != ((void*)0);
}
