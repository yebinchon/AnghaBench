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
typedef  int /*<<< orphan*/  TValue ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/  const*) ; 
 size_t FUNC1 (unsigned int) ; 

__attribute__((used)) static int FUNC2 (const TValue *key, unsigned int *nums) {
  unsigned int k = FUNC0(key);
  if (k != 0) {  /* is 'key' an appropriate array index? */
    nums[FUNC1(k)]++;  /* count as such */
    return 1;
  }
  else
    return 0;
}