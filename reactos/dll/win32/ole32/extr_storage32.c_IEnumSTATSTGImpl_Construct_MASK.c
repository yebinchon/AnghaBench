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
struct TYPE_7__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_9__ {int ref; int /*<<< orphan*/  storageDirEntry; TYPE_2__* parentStorage; scalar_t__* name; TYPE_1__ IEnumSTATSTG_iface; } ;
struct TYPE_8__ {int /*<<< orphan*/  IStorage_iface; } ;
typedef  TYPE_2__ StorageBaseImpl ;
typedef  TYPE_3__ IEnumSTATSTGImpl ;
typedef  int /*<<< orphan*/  DirRef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  IEnumSTATSTGImpl_Vtbl ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static IEnumSTATSTGImpl* FUNC3(
  StorageBaseImpl* parentStorage,
  DirRef         storageDirEntry)
{
  IEnumSTATSTGImpl* newEnumeration;

  newEnumeration = FUNC1(FUNC0(), 0, sizeof(IEnumSTATSTGImpl));

  if (newEnumeration)
  {
    newEnumeration->IEnumSTATSTG_iface.lpVtbl = &IEnumSTATSTGImpl_Vtbl;
    newEnumeration->ref = 1;
    newEnumeration->name[0] = 0;

    /*
     * We want to nail-down the reference to the storage in case the
     * enumeration out-lives the storage in the client application.
     */
    newEnumeration->parentStorage = parentStorage;
    FUNC2(&newEnumeration->parentStorage->IStorage_iface);

    newEnumeration->storageDirEntry = storageDirEntry;
  }

  return newEnumeration;
}