#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_9__ {int /*<<< orphan*/  Context; int /*<<< orphan*/  (* Complete ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_8__ {int Protocol; int /*<<< orphan*/  Port; int /*<<< orphan*/  Context; int /*<<< orphan*/  (* Complete ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  Lock; int /*<<< orphan*/  ReceiveQueue; int /*<<< orphan*/  ListEntry; int /*<<< orphan*/  Connection; } ;
typedef  TYPE_1__* PVOID ;
typedef  int /*<<< orphan*/  PLIST_ENTRY ;
typedef  TYPE_1__* PDATAGRAM_SEND_REQUEST ;
typedef  TYPE_3__* PDATAGRAM_RECEIVE_REQUEST ;
typedef  TYPE_1__* PADDRESS_FILE ;
typedef  int /*<<< orphan*/  KIRQL ;

/* Variables and functions */
 int /*<<< orphan*/  ADDR_FILE_TAG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  AddressFileListLock ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DATAGRAM_RECEIVE_REQUEST ; 
 int /*<<< orphan*/  DATAGRAM_SEND_REQUEST ; 
 int /*<<< orphan*/  DATAGRAM_SEND_TAG ; 
 int /*<<< orphan*/  DEBUG_ADDRFILE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
#define  IPPROTO_TCP 129 
#define  IPPROTO_UDP 128 
 int /*<<< orphan*/  ListEntry ; 
 int /*<<< orphan*/  MID_TRACE ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  STATUS_CANCELLED ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

VOID FUNC13(
    PVOID Object)
/*
 * FUNCTION: Frees an address file object
 * ARGUMENTS:
 *     Object = Pointer to address file object to free
 */
{
  PADDRESS_FILE AddrFile = Object;
  KIRQL OldIrql;
  PDATAGRAM_RECEIVE_REQUEST ReceiveRequest;
  PDATAGRAM_SEND_REQUEST SendRequest;
  PLIST_ENTRY CurrentEntry;

  FUNC7(MID_TRACE, ("Called.\n"));

  /* We should not be associated with a connection here */
  FUNC0(!AddrFile->Connection);

  /* Remove address file from the global list */
  FUNC8(&AddressFileListLock, &OldIrql);
  FUNC5(&AddrFile->ListEntry);
  FUNC9(&AddressFileListLock, OldIrql);

  /* FIXME: Kill TCP connections on this address file object */

  /* Return pending requests with error */

  FUNC7(DEBUG_ADDRFILE, ("Aborting receive requests on AddrFile at (0x%X).\n", AddrFile));

  /* Go through pending receive request list and cancel them all */
  while ((CurrentEntry = FUNC3(&AddrFile->ReceiveQueue, &AddrFile->Lock))) {
    ReceiveRequest = FUNC1(CurrentEntry, DATAGRAM_RECEIVE_REQUEST, ListEntry);
    (*ReceiveRequest->Complete)(ReceiveRequest->Context, STATUS_CANCELLED, 0);
    /* ExFreePoolWithTag(ReceiveRequest, DATAGRAM_RECV_TAG); FIXME: WTF? */
  }

  FUNC7(DEBUG_ADDRFILE, ("Aborting send requests on address file at (0x%X).\n", AddrFile));

  /* Go through pending send request list and cancel them all */
  while ((CurrentEntry = FUNC3(&AddrFile->ReceiveQueue, &AddrFile->Lock))) {
    SendRequest = FUNC1(CurrentEntry, DATAGRAM_SEND_REQUEST, ListEntry);
    (*SendRequest->Complete)(SendRequest->Context, STATUS_CANCELLED, 0);
    FUNC2(SendRequest, DATAGRAM_SEND_TAG);
  }

  /* Protocol specific handling */
  switch (AddrFile->Protocol) {
  case IPPROTO_TCP:
    if (AddrFile->Port)
    {
        FUNC6(AddrFile->Port);
    }
    break;

  case IPPROTO_UDP:
    FUNC10( AddrFile->Port );
    break;
  }

  FUNC4(AddrFile);

  FUNC2(Object, ADDR_FILE_TAG);
}