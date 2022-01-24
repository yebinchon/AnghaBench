#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_3__* scratch; TYPE_1__* transactedParent; int /*<<< orphan*/  base; } ;
typedef  TYPE_4__ TransactedSharedImpl ;
struct TYPE_7__ {int /*<<< orphan*/  IStorage_iface; } ;
struct TYPE_8__ {TYPE_2__ base; } ;
struct TYPE_6__ {int /*<<< orphan*/  IStorage_iface; } ;
typedef  int /*<<< orphan*/  StorageBaseImpl ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4( StorageBaseImpl *iface)
{
  TransactedSharedImpl* This = (TransactedSharedImpl*) iface;

  FUNC3(&This->base);
  FUNC2(&This->transactedParent->IStorage_iface);
  FUNC2(&This->scratch->base.IStorage_iface);
  FUNC1(FUNC0(), 0, This);
}