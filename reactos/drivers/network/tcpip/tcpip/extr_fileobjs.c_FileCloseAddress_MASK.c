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
struct TYPE_10__ {scalar_t__ Listener; int /*<<< orphan*/  Sharers; } ;
struct TYPE_8__ {TYPE_3__* AddressHandle; } ;
struct TYPE_9__ {TYPE_1__ Handle; } ;
typedef  TYPE_2__* PTDI_REQUEST ;
typedef  TYPE_3__* PADDRESS_FILE ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  KIRQL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAX_TRACE ; 
 int /*<<< orphan*/  STATUS_INVALID_PARAMETER ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 

NTSTATUS FUNC6(
  PTDI_REQUEST Request)
{
  PADDRESS_FILE AddrFile = Request->Handle.AddressHandle;
  KIRQL OldIrql;

  if (!Request->Handle.AddressHandle) return STATUS_INVALID_PARAMETER;

  FUNC2(AddrFile, &OldIrql);

  if (FUNC1(&AddrFile->Sharers) != 0)
  {
      /* Still other guys have open handles to this, so keep it around */
      FUNC5(AddrFile, OldIrql);
      return STATUS_SUCCESS;
  }

  /* We have to close this listener because we started it */
  if( AddrFile->Listener )
  {
      FUNC3( AddrFile->Listener );
  }

  FUNC5(AddrFile, OldIrql);

  FUNC0(AddrFile);

  FUNC4(MAX_TRACE, ("Leaving.\n"));

  return STATUS_SUCCESS;
}