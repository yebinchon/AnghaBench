#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int UINT ;
typedef  int /*<<< orphan*/  TDI_STATUS ;
typedef  int /*<<< orphan*/  TDIEntityID ;
typedef  int* PUINT ;
typedef  int /*<<< orphan*/  PNDIS_BUFFER ;
typedef  int /*<<< orphan*/  PCHAR ;
typedef  int /*<<< orphan*/  KIRQL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  DEBUG_INFO ; 
 int EntityCount ; 
 int /*<<< orphan*/ * EntityList ; 
 int /*<<< orphan*/  EntityListLock ; 
 int /*<<< orphan*/  TDI_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

TDI_STATUS FUNC4(PNDIS_BUFFER Buffer,
				    PUINT BufferSize)
{
    UINT Count, Size, BufSize = *BufferSize;
    KIRQL OldIrql;

    FUNC1(DEBUG_INFO,("About to copy %d TDIEntityIDs to user\n",
			   EntityCount));

    FUNC2(&EntityListLock, &OldIrql);

    Size = EntityCount * sizeof(TDIEntityID);
    *BufferSize = Size;

    FUNC1(DEBUG_INFO,("BufSize: %d, NeededSize: %d\n", BufSize, Size));

    if (BufSize < Size || !Buffer)
    {
	FUNC3( &EntityListLock, OldIrql );
	/* The buffer is too small to contain requested data, but we return
         * success anyway, as we did everything we wanted. */
	return TDI_SUCCESS;
    }

    /* Return entity list -- Copy only the TDIEntityID parts. */
    for( Count = 0; Count < EntityCount; Count++ ) {
	FUNC0(Buffer,
				Count * sizeof(TDIEntityID),
				(PCHAR)&EntityList[Count],
				sizeof(TDIEntityID));
    }

    FUNC3(&EntityListLock, OldIrql);

    return TDI_SUCCESS;
}