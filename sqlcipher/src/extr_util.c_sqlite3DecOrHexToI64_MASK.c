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
typedef  int u64 ;
typedef  int /*<<< orphan*/  i64 ;

/* Variables and functions */
 int /*<<< orphan*/  SQLITE_UTF8 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int*,int) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (char const) ; 
 scalar_t__ FUNC3 (char const) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

int FUNC5(const char *z, i64 *pOut){
#ifndef SQLITE_OMIT_HEX_INTEGER
  if( z[0]=='0'
   && (z[1]=='x' || z[1]=='X')
  ){
    u64 u = 0;
    int i, k;
    for(i=2; z[i]=='0'; i++){}
    for(k=i; FUNC3(z[k]); k++){
      u = u*16 + FUNC2(z[k]);
    }
    FUNC0(pOut, &u, 8);
    return (z[k]==0 && k-i<=16) ? 0 : 2;
  }else
#endif /* SQLITE_OMIT_HEX_INTEGER */
  {
    return FUNC1(z, pOut, FUNC4(z), SQLITE_UTF8);
  }
}