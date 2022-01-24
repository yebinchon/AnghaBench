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
 int FUNC0 (int,int) ; 
 int FUNC1 (char const*,char const*,int) ; 

__attribute__((used)) static int FUNC2(
  const char *zLhs, int nLhs,     /* LHS of comparison */
  const char *zRhs, int nRhs      /* RHS of comparison */
){
  int nCmp = FUNC0(nLhs, nRhs);
  int res;

  res = FUNC1(zLhs, zRhs, nCmp);
  if( res==0 ) res = nLhs - nRhs;

  return res;
}