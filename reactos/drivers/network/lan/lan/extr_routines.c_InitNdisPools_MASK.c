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
typedef  int /*<<< orphan*/  NDIS_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  GlobalBufferPool ; 
 int /*<<< orphan*/  GlobalPacketPool ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

NDIS_STATUS FUNC4() {
    NDIS_STATUS NdisStatus;
    /* Last argument is extra space size */
    FUNC2( &NdisStatus, &GlobalPacketPool, 100, 0 );
    if( !FUNC0(NdisStatus) ) return NdisStatus;

    FUNC1( &NdisStatus, &GlobalBufferPool, 100 );
    if( !FUNC0(NdisStatus) )
	FUNC3(GlobalPacketPool);

    return NdisStatus;
}