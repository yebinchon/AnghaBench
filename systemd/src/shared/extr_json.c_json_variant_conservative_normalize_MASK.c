#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ line; scalar_t__ column; scalar_t__ source; } ;
typedef  TYPE_1__ JsonVariant ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static JsonVariant *FUNC2(JsonVariant *v) {

        /* Much like json_variant_normalize(), but won't simplify if the variant has a source/line location attached to
         * it, in order not to lose context */

        if (!v)
                return NULL;

        if (!FUNC0(v))
                return v;

        if (v->source || v->line > 0 || v->column > 0)
                return v;

        return FUNC1(v);
}