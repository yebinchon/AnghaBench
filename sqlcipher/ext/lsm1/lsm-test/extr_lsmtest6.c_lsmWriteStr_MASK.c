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
typedef  int /*<<< orphan*/  lsm_db ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,void*,int,void*,int) ; 
 int FUNC1 (char const*) ; 

__attribute__((used)) static int FUNC2(lsm_db *pDb, const char *zKey, const char *zVal){
  int nKey = FUNC1(zKey);
  int nVal = FUNC1(zVal);
  return FUNC0(pDb, (void *)zKey, nKey, (void *)zVal, nVal);
}