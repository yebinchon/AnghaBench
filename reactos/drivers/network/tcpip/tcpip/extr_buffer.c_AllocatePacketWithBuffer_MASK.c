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
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  PNDIS_PACKET ;
typedef  int /*<<< orphan*/  PNDIS_BUFFER ;
typedef  int /*<<< orphan*/  PCHAR ;
typedef  scalar_t__ NDIS_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GlobalBufferPool ; 
 int /*<<< orphan*/  GlobalPacketPool ; 
 scalar_t__ NDIS_STATUS_RESOURCES ; 
 scalar_t__ NDIS_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NonPagedPool ; 
 int /*<<< orphan*/  PACKET_BUFFER_TAG ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

NDIS_STATUS FUNC7( PNDIS_PACKET *NdisPacket,
				      PCHAR Data, UINT Len ) {
    PNDIS_PACKET Packet;
    PNDIS_BUFFER Buffer;
    NDIS_STATUS Status;
    PCHAR NewData;

    NewData = FUNC0( NonPagedPool, Len, PACKET_BUFFER_TAG );
    if( !NewData ) return NDIS_STATUS_RESOURCES;

    if( Data ) FUNC6(NewData, Data, Len);

    FUNC4( &Status, &Packet, GlobalPacketPool );
    if( Status != NDIS_STATUS_SUCCESS ) {
	FUNC1( NewData, PACKET_BUFFER_TAG );
	return Status;
    }

    FUNC3( &Status, &Buffer, GlobalBufferPool, NewData, Len );
    if( Status != NDIS_STATUS_SUCCESS ) {
	FUNC1( NewData, PACKET_BUFFER_TAG );
	FUNC2( Packet );
	return Status;
    }

    FUNC5( Packet, Buffer );
    *NdisPacket = Packet;

    return NDIS_STATUS_SUCCESS;
}