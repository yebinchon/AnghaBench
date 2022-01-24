#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ reverted; } ;
struct TYPE_4__ {int /*<<< orphan*/  ParentListEntry; TYPE_3__ base; int /*<<< orphan*/ * parentStorage; } ;
typedef  TYPE_1__ StorageInternalImpl ;
typedef  int /*<<< orphan*/  StorageBaseImpl ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_1__*) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3( StorageBaseImpl *base )
{
  StorageInternalImpl* This = (StorageInternalImpl*) base;

  if (!This->base.reverted)
  {
    FUNC1("Storage invalidated (stg=%p)\n", This);

    This->base.reverted = TRUE;

    This->parentStorage = NULL;

    FUNC0(&This->base);

    FUNC2(&This->ParentListEntry);
  }
}