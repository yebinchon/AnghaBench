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
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (void*,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(void *pKey1, int nKey1, void *pKey2, int nKey2){
  int res;
  res = FUNC1(pKey1, pKey2, FUNC0(nKey1, nKey2));
  if( res==0 ){
    res = nKey1 - nKey2;
  }
  return res;
}