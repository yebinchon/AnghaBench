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
struct TYPE_3__ {scalar_t__ type; int /*<<< orphan*/ * ptr; } ;
typedef  int /*<<< orphan*/ * PVOID ;
typedef  int /*<<< orphan*/  PUSER_HANDLE_TABLE ;
typedef  TYPE_1__* PUSER_HANDLE_ENTRY ;
typedef  scalar_t__ HANDLE_TYPE ;
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR_INVALID_HANDLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

PVOID FUNC3(PUSER_HANDLE_TABLE ht, HANDLE handle, HANDLE_TYPE type )
{
   PUSER_HANDLE_ENTRY entry;

   FUNC0(ht);

   if (!(entry = FUNC2(ht, handle )) || entry->type != type)
   {
      FUNC1(ERROR_INVALID_HANDLE);
      return NULL;
   }
   return entry->ptr;
}