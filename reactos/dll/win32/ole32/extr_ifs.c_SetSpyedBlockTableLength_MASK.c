#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int SpyedBlockTableLength; int /*<<< orphan*/ * SpyedBlocks; } ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int LMEM_MOVEABLE ; 
 int LMEM_ZEROINIT ; 
 int /*<<< orphan*/ * FUNC0 (int,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 TYPE_1__ Malloc32 ; 

__attribute__((used)) static BOOL FUNC2 ( DWORD NewLength )
{
	LPVOID *NewSpyedBlocks;

	if (!Malloc32.SpyedBlocks) NewSpyedBlocks = FUNC0(LMEM_ZEROINIT, NewLength * sizeof(PVOID));
	else NewSpyedBlocks = FUNC1(Malloc32.SpyedBlocks, NewLength * sizeof(PVOID), LMEM_ZEROINIT | LMEM_MOVEABLE);
	if (NewSpyedBlocks) {
		Malloc32.SpyedBlocks = NewSpyedBlocks;
		Malloc32.SpyedBlockTableLength = NewLength;
	}

	return NewSpyedBlocks != NULL;
}