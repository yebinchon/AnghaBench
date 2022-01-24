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
typedef  scalar_t__ PCHAR ;
typedef  scalar_t__ NDIS_STATUS ;
typedef  scalar_t__ BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  GlobalBufferPool ; 
 scalar_t__ NDIS_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ STATUS_NO_MEMORY ; 
 scalar_t__ STATUS_SUCCESS ; 

NDIS_STATUS FUNC4( PNDIS_PACKET Packet, PCHAR Data, UINT Length,
			   BOOLEAN Copy ) {
    PNDIS_BUFFER Buffer;
    NDIS_STATUS Status;
    PCHAR NewBuf;

    if( Copy ) {
	NewBuf = FUNC2( Length );
	if( !NewBuf ) return STATUS_NO_MEMORY;
	FUNC3( NewBuf, Data, Length );
    } else NewBuf = Data;

    FUNC0( &Status, &Buffer, GlobalBufferPool, Data, Length );
    if( Status != NDIS_STATUS_SUCCESS ) return Status;

    FUNC1( Packet, Buffer );

    return STATUS_SUCCESS;
}