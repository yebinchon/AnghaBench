#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  AddressLength; int /*<<< orphan*/  Broadcast; } ;
typedef  int /*<<< orphan*/ * PNEIGHBOR_CACHE_ENTRY ;
typedef  TYPE_1__* PIP_INTERFACE ;
typedef  int /*<<< orphan*/  PIP_ADDRESS ;
typedef  scalar_t__ BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ARP_INCOMPLETE_TIMEOUT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DEBUG_NCACHE ; 
 int /*<<< orphan*/  MID_TRACE ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NUD_INCOMPLETE ; 
 int /*<<< orphan*/  NUD_PERMANENT ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

PNEIGHBOR_CACHE_ENTRY FUNC7(
  PIP_INTERFACE Interface,
  PIP_ADDRESS Address,
  BOOLEAN NoTimeout)
/*
 * FUNCTION: Tries to find a neighbor and if unsuccesful, creates a new NCE
 * ARGUMENTS:
 *   Interface = Pointer to interface to use (in case NCE is not found)
 *   Address   = Pointer to IP address
 * RETURNS:
 *   Pointer to NCE, NULL if there is not enough free resources
 * NOTES:
 *   The NCE is referenced if found or created. The caller is
 *   responsible for dereferencing it again after use
 */
{
  PNEIGHBOR_CACHE_ENTRY NCE;

  FUNC6(DEBUG_NCACHE, ("Called. Interface (0x%X)  Address (0x%X).\n", Interface, Address));

  NCE = FUNC4(Address, Interface);
  if (NCE == NULL)
    {
        FUNC6(MID_TRACE,("BCAST: %s\n", FUNC0(&Interface->Broadcast)));
        if( FUNC1(Address, &Interface->Broadcast) ||
            FUNC2(Address) ) {
            FUNC6(MID_TRACE,("Packet targeted at broadcast addr\n"));
            NCE = FUNC3(Interface, Address, NULL,
                                Interface->AddressLength, NUD_PERMANENT, 0);
        } else {
            NCE = FUNC3(Interface, Address, NULL,
                                Interface->AddressLength, NUD_INCOMPLETE, NoTimeout ? 0 : ARP_INCOMPLETE_TIMEOUT);
            if (!NCE) return NULL;
            FUNC5(NCE);
        }
    }

  return NCE;
}