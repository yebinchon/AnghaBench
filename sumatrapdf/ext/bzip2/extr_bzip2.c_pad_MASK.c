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
typedef  scalar_t__ Int32 ;
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ longestFileName ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static 
void FUNC2 ( Char *s )
{
   Int32 i;
   if ( (Int32)FUNC1(s) >= longestFileName ) return;
   for (i = 1; i <= longestFileName - (Int32)FUNC1(s); i++)
      FUNC0 ( stderr, " " );
}