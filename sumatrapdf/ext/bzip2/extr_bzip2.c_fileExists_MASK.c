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
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  Char ;
typedef  int /*<<< orphan*/  Bool ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static 
Bool FUNC2 ( Char* name )
{
   FILE *tmp   = FUNC1 ( name, "rb" );
   Bool exists = (tmp != NULL);
   if (tmp != NULL) FUNC0 ( tmp );
   return exists;
}