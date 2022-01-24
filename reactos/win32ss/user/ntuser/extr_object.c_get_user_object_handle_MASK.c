#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ type; void* ptr; } ;
typedef  int /*<<< orphan*/  PUSER_HANDLE_TABLE ;
typedef  TYPE_1__* PUSER_HANDLE_ENTRY ;
typedef  scalar_t__ HANDLE_TYPE ;
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void *FUNC2(PUSER_HANDLE_TABLE ht,  HANDLE* handle, HANDLE_TYPE type )
{
   PUSER_HANDLE_ENTRY entry;

   if (!(entry = FUNC1(ht, *handle )) || entry->type != type)
      return NULL;
   *handle = FUNC0( ht, entry );
   return entry->ptr;
}