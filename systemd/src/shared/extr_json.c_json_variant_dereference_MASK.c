#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct TYPE_5__* reference; int /*<<< orphan*/  is_reference; } ;
typedef  TYPE_1__ JsonVariant ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

__attribute__((used)) static JsonVariant *FUNC1(JsonVariant *v) {

        /* Recursively dereference variants that are references to other variants */

        if (!v)
                return NULL;

        if (!FUNC0(v))
                return v;

        if (!v->is_reference)
                return v;

        return FUNC1(v->reference);
}