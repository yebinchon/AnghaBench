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
typedef  int /*<<< orphan*/  u_char ;

/* Variables and functions */
 long FUNC0 (int /*<<< orphan*/ *,size_t) ; 

void
FUNC1(const u_char *str, size_t len,
    long *time)
{
    /* ngx_http_parse_time doesn't modify 'str' actually */
    *time = FUNC0((u_char *) str, len);
}