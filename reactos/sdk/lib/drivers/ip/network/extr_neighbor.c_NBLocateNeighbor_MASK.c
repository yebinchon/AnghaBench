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
typedef  int UINT ;
struct TYPE_9__ {int /*<<< orphan*/  Lock; TYPE_1__* Cache; } ;
struct TYPE_8__ {int /*<<< orphan*/  Address; } ;
struct TYPE_7__ {struct TYPE_7__* Next; int /*<<< orphan*/  Address; int /*<<< orphan*/ * Interface; } ;
typedef  int* PULONG ;
typedef  TYPE_1__* PNEIGHBOR_CACHE_ENTRY ;
typedef  int /*<<< orphan*/ * PIP_INTERFACE ;
typedef  TYPE_2__* PIP_ADDRESS ;
typedef  int /*<<< orphan*/  KIRQL ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DEBUG_NCACHE ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  MAX_TRACE ; 
 int NB_HASHMASK ; 
 TYPE_3__* NeighborCache ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

PNEIGHBOR_CACHE_ENTRY FUNC5(
  PIP_ADDRESS Address,
  PIP_INTERFACE Interface)
/*
 * FUNCTION: Locates a neighbor in the neighbor cache
 * ARGUMENTS:
 *   Address = Pointer to IP address
 *   Interface = Pointer to IP interface
 * RETURNS:
 *   Pointer to NCE, NULL if not found
 * NOTES:
 *   If the NCE is found, it is referenced. The caller is
 *   responsible for dereferencing it again after use
 */
{
  PNEIGHBOR_CACHE_ENTRY NCE;
  UINT HashValue;
  KIRQL OldIrql;
  PIP_INTERFACE FirstInterface;

  FUNC2(DEBUG_NCACHE, ("Called. Address (0x%X).\n", Address));

  HashValue = *(PULONG)&Address->Address;
  HashValue ^= HashValue >> 16;
  HashValue ^= HashValue >> 8;
  HashValue ^= HashValue >> 4;
  HashValue &= NB_HASHMASK;

  FUNC3(&NeighborCache[HashValue].Lock, &OldIrql);

  /* If there's no adapter specified, we'll look for a match on
   * each one. */
  if (Interface == NULL)
  {
      FirstInterface = FUNC1();
      Interface = FirstInterface;
  }
  else
  {
      FirstInterface = NULL;
  }

  do
  {
      NCE = NeighborCache[HashValue].Cache;
      while (NCE != NULL)
      {
         if (NCE->Interface == Interface &&
             FUNC0(Address, &NCE->Address))
         {
             break;
         }
 
         NCE = NCE->Next;
      }
      
      if (NCE != NULL)
          break;
  }
  while ((FirstInterface != NULL) &&
         ((Interface = FUNC1()) != FirstInterface));

  if ((NCE == NULL) && (FirstInterface != NULL))
  {
      /* This time we'll even match loopback NCEs */
      NCE = NeighborCache[HashValue].Cache;
      while (NCE != NULL)
      {
         if (FUNC0(Address, &NCE->Address))
         {
             break;
         }

         NCE = NCE->Next;
      }
  }

  FUNC4(&NeighborCache[HashValue].Lock, OldIrql);

  FUNC2(MAX_TRACE, ("Leaving.\n"));

  return NCE;
}