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
typedef  int sqlite3_uint64 ;
typedef  int /*<<< orphan*/  a ;
typedef  int LogEst ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int*,double*,int) ; 

__attribute__((used)) static LogEst FUNC3(double x){
  sqlite3_uint64 a;
  LogEst e;
  FUNC0( sizeof(x)==8 && sizeof(a)==8 );
  if( x<=0.0 ) return -32768;
  if( x<0.01 ) return -FUNC3(1.0/x);
  if( x<1.0 ) return FUNC3(100.0*x) - 66;
  if( x<1024.0 ) return FUNC1((sqlite3_uint64)(1024.0*x)) - 100;
  if( x<=2000000000.0 ) return FUNC1((sqlite3_uint64)x);
  FUNC2(&a, &x, 8);
  e = (a>>52) - 1022;
  return e*10;
}