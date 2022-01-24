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
struct hash_ops {int dummy; } ;
typedef  int /*<<< orphan*/  OrderedSet ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/ * FUNC0 (struct hash_ops const*) ; 

__attribute__((used)) static inline int FUNC1(OrderedSet **s, const struct hash_ops *ops) {
        if (*s)
                return 0;

        *s = FUNC0(ops);
        if (!*s)
                return -ENOMEM;

        return 0;
}