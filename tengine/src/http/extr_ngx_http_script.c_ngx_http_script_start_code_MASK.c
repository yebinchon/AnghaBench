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
typedef  int /*<<< orphan*/  ngx_pool_t ;
typedef  int /*<<< orphan*/  ngx_array_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 void* FUNC1 (int /*<<< orphan*/ *,size_t) ; 

void *
FUNC2(ngx_pool_t *pool, ngx_array_t **codes, size_t size)
{
    if (*codes == NULL) {
        *codes = FUNC0(pool, 256, 1);
        if (*codes == NULL) {
            return NULL;
        }
    }

    return FUNC1(*codes, size);
}