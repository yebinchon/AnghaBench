#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_8__ {char* Buffer; int MaximumLength; int Length; } ;
struct TYPE_10__ {int MTU; int /*<<< orphan*/  Broadcast; int /*<<< orphan*/  Netmask; int /*<<< orphan*/  Unicast; TYPE_1__ Name; } ;
struct TYPE_9__ {int /*<<< orphan*/  Transmit; scalar_t__ AddressLength; int /*<<< orphan*/ * Address; scalar_t__ MinFrameSize; scalar_t__ HeaderSize; int /*<<< orphan*/ * Context; } ;
typedef  int /*<<< orphan*/  PNDIS_STRING ;
typedef  int /*<<< orphan*/  PLAN_ADAPTER ;
typedef  int /*<<< orphan*/  NDIS_STATUS ;
typedef  TYPE_2__ LLIP_BIND_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 TYPE_3__* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  LOOPBACK_ADDRESS_IPv4 ; 
 int /*<<< orphan*/  LOOPBACK_ADDRMASK_IPv4 ; 
 int /*<<< orphan*/  LOOPBACK_BCASTADDR_IPv4 ; 
 int /*<<< orphan*/  LoopTransmit ; 
 TYPE_3__* Loopback ; 
 int /*<<< orphan*/  MAX_TRACE ; 
 int /*<<< orphan*/  MID_TRACE ; 
 int /*<<< orphan*/  NDIS_STATUS_RESOURCES ; 
 int /*<<< orphan*/  NDIS_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (char*) ; 

NDIS_STATUS FUNC6(
  PNDIS_STRING AdapterName,
  PLAN_ADAPTER *Adapter)
/*
 * FUNCTION: Registers loopback adapter with the network layer
 * ARGUMENTS:
 *   AdapterName = Unused
 *   Adapter     = Unused
 * RETURNS:
 *   Status of operation
 */
{
  LLIP_BIND_INFO BindInfo;

  FUNC4(MID_TRACE, ("Called.\n"));

  /* Bind the adapter to network (IP) layer */
  BindInfo.Context = NULL;
  BindInfo.HeaderSize = 0;
  BindInfo.MinFrameSize = 0;
  BindInfo.Address = NULL;
  BindInfo.AddressLength = 0;
  BindInfo.Transmit = LoopTransmit;

  Loopback = FUNC2(&BindInfo);
  if (!Loopback) return NDIS_STATUS_RESOURCES;
    
  Loopback->MTU = 16384;

  Loopback->Name.Buffer = L"Loopback";
  Loopback->Name.MaximumLength = Loopback->Name.Length =
      FUNC5(Loopback->Name.Buffer) * sizeof(WCHAR);

  FUNC0(&Loopback->Unicast, LOOPBACK_ADDRESS_IPv4);
  FUNC0(&Loopback->Netmask, LOOPBACK_ADDRMASK_IPv4);
  FUNC0(&Loopback->Broadcast, LOOPBACK_BCASTADDR_IPv4);

  FUNC3(Loopback);
    
  FUNC1(Loopback);

  FUNC4(MAX_TRACE, ("Leaving.\n"));

  return NDIS_STATUS_SUCCESS;
}