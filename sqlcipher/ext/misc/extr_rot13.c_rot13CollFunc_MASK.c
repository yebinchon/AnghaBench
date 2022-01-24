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

__attribute__((used)) static int FUNC1(
  void *notUsed,
  int nKey1, const void *pKey1,
  int nKey2, const void *pKey2
){
  const char *zA = (const char*)pKey1;
  const char *zB = (const char*)pKey2;
  int i, x;
  for(i=0; i<nKey1 && i<nKey2; i++){
    x = (int)FUNC0(zA[i]) - (int)FUNC0(zB[i]);
    if( x!=0 ) return x;
  }
  return nKey1 - nKey2;
}