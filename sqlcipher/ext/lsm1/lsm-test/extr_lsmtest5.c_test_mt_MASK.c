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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,char const*,int*) ; 
 scalar_t__ FUNC1 () ; 

void FUNC2(
  const char *zSystem,            /* Database system name */
  const char *zPattern,           /* Run test cases that match this pattern */
  int *pRc                        /* IN/OUT: Error code */
){
  if( FUNC1()==0 ) return;
  FUNC0(zSystem, zPattern, pRc);
}