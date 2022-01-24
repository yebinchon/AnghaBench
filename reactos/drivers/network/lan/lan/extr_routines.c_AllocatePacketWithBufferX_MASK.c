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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GlobalBufferPool ; 
 int /*<<< orphan*/  GlobalPacketPool ; 
 int /*<<< orphan*/  NDIS_BUFFER_TAG ; 
 int /*<<< orphan*/  NDIS_PACKET_TAG ; 
 scalar_t__ NDIS_STATUS_NOT_ACCEPTED ; 
 scalar_t__ NDIS_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NonPagedPool ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

NDIS_STATUS FUNC8( PNDIS_PACKET *NdisPacket,
				       PCHAR Data, UINT Len,
				       PCHAR File, UINT Line ) {
    PNDIS_PACKET Packet;
    PNDIS_BUFFER Buffer;
    NDIS_STATUS Status;
    PCHAR NewData;

    NewData = FUNC6( NonPagedPool, Len );
    if( !NewData ) return NDIS_STATUS_NOT_ACCEPTED; // XXX

    if( Data )
	FUNC4(NewData, Data, Len);

    FUNC2( &Status, &Packet, GlobalPacketPool );
    if( Status != NDIS_STATUS_SUCCESS ) {
	FUNC7( NewData );
	return Status;
    }
    FUNC5(NDIS_PACKET_TAG, Packet, File, Line);

    FUNC1( &Status, &Buffer, GlobalBufferPool, NewData, Len );
    if( Status != NDIS_STATUS_SUCCESS ) {
	FUNC7( NewData );
	FUNC0( Packet );
    }
    FUNC5(NDIS_BUFFER_TAG, Buffer, File, Line);

    FUNC3( Packet, Buffer );
    *NdisPacket = Packet;

    return NDIS_STATUS_SUCCESS;
}