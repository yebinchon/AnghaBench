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
typedef  int /*<<< orphan*/  VOID ;
typedef  scalar_t__* LPTSTR ;

/* Variables and functions */
 scalar_t__ CHAR_HASH ; 
 scalar_t__ CHAR_NULL ; 
 scalar_t__* FUNC0 (scalar_t__*) ; 

VOID
FUNC1(LPTSTR p)
{
   LPTSTR pT;

   while (*p) {
      if (*p == CHAR_HASH) {
         pT = p;
         p = FUNC0(p);
         *pT = CHAR_NULL;
      }
      else
         p = FUNC0(p);
   }
}