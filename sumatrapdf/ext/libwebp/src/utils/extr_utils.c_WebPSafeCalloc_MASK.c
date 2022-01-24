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
typedef  size_t uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 void* FUNC4 (size_t,size_t) ; 
 int /*<<< orphan*/  num_calloc_calls ; 

void* FUNC5(uint64_t nmemb, size_t size) {
  void* ptr;
  FUNC2(&num_calloc_calls);
  if (!FUNC1(nmemb, size)) return NULL;
  FUNC3(nmemb * size > 0);
  ptr = FUNC4((size_t)nmemb, size);
  FUNC0(ptr, (size_t)(nmemb * size));
  return ptr;
}