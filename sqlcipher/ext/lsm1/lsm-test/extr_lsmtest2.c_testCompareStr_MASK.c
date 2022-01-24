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
 scalar_t__ FUNC0 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 () ; 

void FUNC3(const char *z1, const char *z2, int *pRc){
  if( *pRc==0 ){
    if( FUNC0(z1, z2) ){
      FUNC1("testCompareStr: \"%s\" != \"%s\"\n", z1, z2);
      *pRc = 1;
      FUNC2();
    }
  }
}