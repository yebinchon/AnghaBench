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
 scalar_t__ FUNC0 (char const) ; 
 scalar_t__ FUNC1 (char const*,char*,int) ; 
 int FUNC2 (char const*,int*) ; 

__attribute__((used)) static int FUNC3(const char *z, int stopAtElse, int *pnLine){
  int n = 0;
  while( z[n] ){
    int len = FUNC2(z+n, pnLine);
    if( (FUNC1(z+n,"--endif",7)==0 && FUNC0(z[n+7]))
     || (stopAtElse && FUNC1(z+n,"--else",6)==0 && FUNC0(z[n+6]))
    ){
      return n+len;
    }
    if( FUNC1(z+n,"--if",4)==0 && FUNC0(z[n+4]) ){
      int skip = FUNC3(z+n+len, 0, pnLine);
      n += skip + len;
    }else{
      n += len;
    }
  }
  return n;
}