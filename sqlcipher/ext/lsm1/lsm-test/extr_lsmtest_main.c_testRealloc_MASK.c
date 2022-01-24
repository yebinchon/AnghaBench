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
typedef  int /*<<< orphan*/  u8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 void* FUNC2 (int) ; 

void *FUNC3(void *ptr, int n){
  if( ptr ){
    u8 *p = (u8*)ptr - 8;
    int nOrig =  *(int*)p;
    p = (u8*)FUNC1(p, n+8);
    if( nOrig<n ){
      FUNC0(&p[8+nOrig], 0, n-nOrig);
    }
    *(int*)p = n;
    return (void*)&p[8];
  }
  return FUNC2(n);
}