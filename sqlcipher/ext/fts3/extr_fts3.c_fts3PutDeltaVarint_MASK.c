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
typedef  scalar_t__ sqlite3_int64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 

__attribute__((used)) static void FUNC2(
  char **pp,                      /* IN/OUT: Output pointer */
  sqlite3_int64 *piPrev,          /* IN/OUT: Previous value written to list */
  sqlite3_int64 iVal              /* Write this value to the list */
){
  FUNC0( iVal-*piPrev > 0 || (*piPrev==0 && iVal==0) );
  *pp += FUNC1(*pp, iVal-*piPrev);
  *piPrev = iVal;
}