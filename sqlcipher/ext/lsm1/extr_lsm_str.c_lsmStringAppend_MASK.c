#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ n; scalar_t__ z; scalar_t__ nAlloc; } ;
typedef  TYPE_1__ LsmString ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char const*,int) ; 
 scalar_t__ FUNC2 (char const*) ; 

int FUNC3(LsmString *pStr, const char *z, int N){
  int rc;
  if( N<0 ) N = (int)FUNC2(z);
  rc = FUNC0(pStr, N+1);
  if( pStr->nAlloc ){
    FUNC1(pStr->z+pStr->n, z, N+1);
    pStr->n += N;
  }
  return rc;
}