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
struct HelloTypeObject {scalar_t__ len; int /*<<< orphan*/ * head; } ;

/* Variables and functions */
 struct HelloTypeObject* FUNC0 (int) ; 

struct HelloTypeObject *FUNC1(void) {
    struct HelloTypeObject *o;
    o = FUNC0(sizeof(*o));
    o->head = NULL;
    o->len = 0;
    return o;
}