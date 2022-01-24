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
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  int /*<<< orphan*/ * PNDIS_PACKET ;
typedef  int /*<<< orphan*/ * PNDIS_BUFFER ;
typedef  int /*<<< orphan*/  PCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_PBUFFER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

VOID FUNC8
( PNDIS_PACKET Packet,
  PCHAR File,
  UINT Line )
/*
 * FUNCTION: Frees an NDIS packet
 * ARGUMENTS:
 *     Packet = Pointer to NDIS packet to be freed
 */
{
    PNDIS_BUFFER Buffer, NextBuffer;

    FUNC4(DEBUG_PBUFFER, ("Packet (0x%X)\n", Packet));

    /* Free all the buffers in the packet first */
    FUNC3(Packet, NULL, NULL, &Buffer, NULL);
    for (; Buffer != NULL; Buffer = NextBuffer) {
        PVOID Data;
        UINT Length;

        FUNC2(Buffer, &NextBuffer);
        FUNC6(Buffer, &Data, &Length);
	FUNC5(File,Line,Buffer);
        FUNC0(Buffer);
        FUNC7(Data);
    }

    /* Finally free the NDIS packet descriptor */
    FUNC5(File,Line,Packet);
    FUNC1(Packet);
}