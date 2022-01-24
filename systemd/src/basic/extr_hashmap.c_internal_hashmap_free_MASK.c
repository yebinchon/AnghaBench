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
typedef  int /*<<< orphan*/  free_func_t ;
typedef  int /*<<< orphan*/  HashmapBase ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

HashmapBase *FUNC2(HashmapBase *h, free_func_t default_free_key, free_func_t default_free_value) {
        if (h) {
                FUNC1(h, default_free_key, default_free_value);
                FUNC0(h);
        }

        return NULL;
}