#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  void* UINT ;
struct TYPE_3__ {int ipsi_numaddr; void* ipsi_numroutes; void* ipsi_numif; } ;
typedef  int /*<<< orphan*/  TDI_STATUS ;
typedef  int /*<<< orphan*/  TDIEntityID ;
typedef  int /*<<< orphan*/  SnmpInfo ;
typedef  int /*<<< orphan*/  PUINT ;
typedef  int /*<<< orphan*/  PNDIS_BUFFER ;
typedef  int /*<<< orphan*/  PIP_INTERFACE ;
typedef  int /*<<< orphan*/  PCHAR ;
typedef  TYPE_1__ IPSNMPInfo ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 () ; 
 int /*<<< orphan*/  DEBUG_INFO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  TDI_INVALID_REQUEST ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

TDI_STATUS FUNC5( TDIEntityID ID,
                                      PIP_INTERFACE IF,
				      PNDIS_BUFFER Buffer,
				      PUINT BufferSize ) {
    IPSNMPInfo SnmpInfo;
    UINT IfCount = FUNC1();
    UINT RouteCount = FUNC0(IF);
    TDI_STATUS Status = TDI_INVALID_REQUEST;

    FUNC4(DEBUG_INFO, ("Called.\n"));

    FUNC3(&SnmpInfo, sizeof(SnmpInfo));

    SnmpInfo.ipsi_numif = IfCount;
    SnmpInfo.ipsi_numaddr = 1;
    SnmpInfo.ipsi_numroutes = RouteCount;

    Status = FUNC2( (PCHAR)&SnmpInfo, sizeof(SnmpInfo),
			  Buffer, BufferSize );

    FUNC4(DEBUG_INFO, ("Returning %08x\n", Status));

    return Status;
}