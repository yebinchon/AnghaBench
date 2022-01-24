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
 int FUNC0 (void const*) ; 
 int FUNC1 (void const*,void const*,int) ; 
 int /*<<< orphan*/  unaligned_string_counter ; 

__attribute__((used)) static int FUNC2(
  void *NotUsed,
  int nKey1, const void *pKey1,
  int nKey2, const void *pKey2
){
  int rc, n;
  n = nKey1<nKey2 ? nKey1 : nKey2;
  if( nKey1>0 && 1==(1&(FUNC0(pKey1))) ) unaligned_string_counter++;
  if( nKey2>0 && 1==(1&(FUNC0(pKey2))) ) unaligned_string_counter++;
  rc = FUNC1(pKey1, pKey2, n);
  if( rc==0 ){
    rc = nKey1 - nKey2;
  }
  return rc;
}