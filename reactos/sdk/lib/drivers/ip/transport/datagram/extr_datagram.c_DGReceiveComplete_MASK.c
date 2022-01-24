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
typedef  int /*<<< orphan*/  VOID ;
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_3__ {int /*<<< orphan*/  UserContext; int /*<<< orphan*/  (* UserComplete ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  TYPE_1__* PDATAGRAM_RECEIVE_REQUEST ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  DATAGRAM_RECV_TAG ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_TRACE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

VOID FUNC3(PVOID Context, NTSTATUS Status, ULONG Count) {
    PDATAGRAM_RECEIVE_REQUEST ReceiveRequest =
	(PDATAGRAM_RECEIVE_REQUEST)Context;
    FUNC1(MAX_TRACE,("Called (%08x:%08x)\n", Status, Count));
    ReceiveRequest->UserComplete( ReceiveRequest->UserContext, Status, Count );
    FUNC0( ReceiveRequest, DATAGRAM_RECV_TAG );
    FUNC1(MAX_TRACE,("Done\n"));
}