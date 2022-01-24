#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  PIP_ADDRESS ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 

BOOLEAN FUNC3(
   PIP_ADDRESS LocalAddress,
   PIP_ADDRESS RemoteAddress)
{
   if (FUNC1(LocalAddress, RemoteAddress))
   {
       /* Unicast address match */
       return TRUE;
   }

   if (FUNC0(LocalAddress, RemoteAddress))
   {
       /* Broadcast address match */
       return TRUE;
   }

   if (FUNC2(LocalAddress))
   {
       /* Local address unspecified */
       return TRUE;
   }

   if (FUNC2(RemoteAddress))
   {
       /* Remote address unspecified */
       return TRUE;
   }

   return FALSE;
}