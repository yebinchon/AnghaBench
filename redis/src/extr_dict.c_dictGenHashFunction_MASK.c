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
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  dict_hash_function_seed ; 
 int /*<<< orphan*/  FUNC0 (void const*,int,int /*<<< orphan*/ ) ; 

uint64_t FUNC1(const void *key, int len) {
    return FUNC0(key,len,dict_hash_function_seed);
}