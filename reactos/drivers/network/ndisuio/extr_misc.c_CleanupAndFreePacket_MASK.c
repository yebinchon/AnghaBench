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
typedef  int /*<<< orphan*/  VOID ;
typedef  int /*<<< orphan*/  ULONG ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  int /*<<< orphan*/  PNDIS_PACKET ;
typedef  int /*<<< orphan*/  PNDIS_BUFFER ;
typedef  scalar_t__ BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ TRUE ; 

VOID
FUNC5(PNDIS_PACKET Packet, BOOLEAN FreePool)
{
    PNDIS_BUFFER Buffer;
    PVOID Data;
    ULONG Length;

    /* Free each buffer and its backing pool memory */
    while (TRUE)
    {
        /* Unchain each buffer */
        FUNC4(Packet, &Buffer);
        if (!Buffer)
            break;
        
        /* Get the backing memory */
        FUNC3(Buffer, &Data, &Length);
        
        /* Free the buffer */
        FUNC1(Buffer);

        if (FreePool)
        {
            /* Free the backing memory */
            FUNC0(Data);
        }
    }
    
    /* Free the packet descriptor */
    FUNC2(Packet);
}