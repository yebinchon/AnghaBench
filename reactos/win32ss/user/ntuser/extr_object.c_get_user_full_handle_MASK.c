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
typedef  int ULONG_PTR ;
typedef  int /*<<< orphan*/  PUSER_HANDLE_TABLE ;
typedef  int /*<<< orphan*/  PUSER_HANDLE_ENTRY ;
typedef  scalar_t__ HANDLE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

HANDLE FUNC2(PUSER_HANDLE_TABLE ht,  HANDLE handle )
{
   PUSER_HANDLE_ENTRY entry;

   if ((ULONG_PTR)handle >> 16)
      return handle;
   if (!(entry = FUNC1(ht, handle )))
      return handle;
   return FUNC0( ht, entry );
}