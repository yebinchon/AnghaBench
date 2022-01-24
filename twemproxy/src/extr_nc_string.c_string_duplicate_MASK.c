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
struct string {scalar_t__ len; char* data; } ;
typedef  int /*<<< orphan*/  rstatus_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  NC_ENOMEM ; 
 int /*<<< orphan*/  NC_OK ; 
 char* FUNC1 (char*,scalar_t__) ; 

rstatus_t
FUNC2(struct string *dst, const struct string *src)
{
    FUNC0(dst->len == 0 && dst->data == NULL);
    FUNC0(src->len != 0 && src->data != NULL);

    dst->data = FUNC1(src->data, src->len + 1);
    if (dst->data == NULL) {
        return NC_ENOMEM;
    }

    dst->len = src->len;
    dst->data[dst->len] = '\0';

    return NC_OK;
}