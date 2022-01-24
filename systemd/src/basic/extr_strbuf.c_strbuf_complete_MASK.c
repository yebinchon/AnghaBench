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
struct strbuf {scalar_t__ root; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 

void FUNC1(struct strbuf *str) {
        if (!str)
                return;
        if (str->root)
                str->root = FUNC0(str->root);
}