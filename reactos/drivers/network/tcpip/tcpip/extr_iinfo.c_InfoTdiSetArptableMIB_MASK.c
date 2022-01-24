#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT ;
struct TYPE_4__ {int /*<<< orphan*/  AddrSize; int /*<<< orphan*/  PhysAddr; int /*<<< orphan*/  LogAddr; } ;
typedef  int /*<<< orphan*/  TDI_STATUS ;
typedef  TYPE_1__* PVOID ;
typedef  int /*<<< orphan*/  PNEIGHBOR_CACHE_ENTRY ;
typedef  int /*<<< orphan*/  PIP_INTERFACE ;
typedef  TYPE_1__* PIPARP_ENTRY ;
typedef  int /*<<< orphan*/  IP_ADDRESS ;
typedef  int /*<<< orphan*/  IPARP_ENTRY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NUD_PERMANENT ; 
 int /*<<< orphan*/  TDI_INVALID_PARAMETER ; 
 int /*<<< orphan*/  TDI_SUCCESS ; 

TDI_STATUS FUNC4(PIP_INTERFACE IF, PVOID Buffer, UINT BufferSize)
{
    PIPARP_ENTRY ArpEntry = Buffer;
    IP_ADDRESS Address;
    PNEIGHBOR_CACHE_ENTRY NCE;

    if (!Buffer || BufferSize < sizeof(IPARP_ENTRY))
        return TDI_INVALID_PARAMETER;

    FUNC0(&Address, ArpEntry->LogAddr);

    if ((NCE = FUNC2(&Address, IF)))
        FUNC3(NCE);
     
    if (FUNC1(IF,
                      &Address,
                      ArpEntry->PhysAddr,
                      ArpEntry->AddrSize,
                      NUD_PERMANENT,
                      0))
        return TDI_SUCCESS;
    else
        return TDI_INVALID_PARAMETER;
}