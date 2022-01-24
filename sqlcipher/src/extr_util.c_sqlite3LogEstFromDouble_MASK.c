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
typedef  int /*<<< orphan*/  x ;
typedef  int u64 ;
typedef  int /*<<< orphan*/  a ;
typedef  int LogEst ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int*,double*,int) ; 
 int FUNC2 (int) ; 

LogEst FUNC3(double x){
  u64 a;
  LogEst e;
  FUNC0( sizeof(x)==8 && sizeof(a)==8 );
  if( x<=1 ) return 0;
  if( x<=2000000000 ) return FUNC2((u64)x);
  FUNC1(&a, &x, 8);
  e = (a>>52) - 1022;
  return e*10;
}