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
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int RefCount; int /*<<< orphan*/  Free; int /*<<< orphan*/  Lock; int /*<<< orphan*/  ListEntry; } ;
struct TYPE_7__ {TYPE_3__* ControlChannel; } ;
struct TYPE_8__ {TYPE_1__ Handle; } ;
typedef  TYPE_2__* PTDI_REQUEST ;
typedef  TYPE_3__* PCONTROL_CHANNEL ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  CONTROL_CHANNEL ;

/* Variables and functions */
 int /*<<< orphan*/  CONTROL_CHANNEL_TAG ; 
 int /*<<< orphan*/  ControlChannelFree ; 
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAX_TRACE ; 
 int /*<<< orphan*/  MID_TRACE ; 
 int /*<<< orphan*/  MIN_TRACE ; 
 int /*<<< orphan*/  NonPagedPool ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  STATUS_INSUFFICIENT_RESOURCES ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

NTSTATUS FUNC5(
    PTDI_REQUEST Request)
{
  PCONTROL_CHANNEL ControlChannel;
  FUNC4(MID_TRACE, ("Called.\n"));

  ControlChannel = FUNC0(NonPagedPool, sizeof(*ControlChannel),
                                         CONTROL_CHANNEL_TAG);

  if (!ControlChannel) {
    FUNC4(MIN_TRACE, ("Insufficient resources.\n"));
    return STATUS_INSUFFICIENT_RESOURCES;
  }

  FUNC3(ControlChannel, sizeof(CONTROL_CHANNEL));

  /* Make sure address is a local unicast address or 0 */

  /* Locate address entry. If specified address is 0, a random address is chosen */

  /* Initialize receive and transmit queues */
  FUNC1(&ControlChannel->ListEntry);

  /* Initialize spin lock that protects the address file object */
  FUNC2(&ControlChannel->Lock);

  ControlChannel->RefCount = 1;
  ControlChannel->Free = ControlChannelFree;

  /* Return address file object */
  Request->Handle.ControlChannel = ControlChannel;

  FUNC4(MAX_TRACE, ("Leaving.\n"));

  return STATUS_SUCCESS;
}