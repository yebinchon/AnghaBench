#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct TYPE_6__ {int /*<<< orphan*/  mutex; } ;
struct TYPE_4__ {void* (* xMalloc ) (int) ;} ;
struct TYPE_5__ {TYPE_1__ m; scalar_t__ bMemstat; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,void**) ; 
 TYPE_3__ mem0 ; 
 TYPE_2__ sqlite3GlobalConfig ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (int) ; 

void *FUNC6(u64 n){
  void *p;
  if( n==0 || n>=0x7fffff00 ){
    /* A memory allocation of a number of bytes which is near the maximum
    ** signed integer value might cause an integer overflow inside of the
    ** xMalloc().  Hence we limit the maximum size to 0x7fffff00, giving
    ** 255 bytes of overhead.  SQLite itself will never use anything near
    ** this amount.  The only way to reach the limit is with sqlite3_malloc() */
    p = 0;
  }else if( sqlite3GlobalConfig.bMemstat ){
    FUNC3(mem0.mutex);
    FUNC2((int)n, &p);
    FUNC4(mem0.mutex);
  }else{
    p = sqlite3GlobalConfig.m.xMalloc((int)n);
  }
  FUNC1( FUNC0(p) );  /* IMP: R-11148-40995 */
  return p;
}