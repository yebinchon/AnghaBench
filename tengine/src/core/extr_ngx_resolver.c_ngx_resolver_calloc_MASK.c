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
typedef  void u_char ;
typedef  int /*<<< orphan*/  ngx_resolver_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,size_t) ; 
 void* FUNC1 (int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static void *
FUNC2(ngx_resolver_t *r, size_t size)
{
    u_char  *p;

    p = FUNC1(r, size);

    if (p) {
        FUNC0(p, size);
    }

    return p;
}