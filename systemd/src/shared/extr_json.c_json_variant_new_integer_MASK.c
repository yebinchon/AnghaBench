#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ intmax_t ;
typedef  int /*<<< orphan*/  i ;
struct TYPE_7__ {scalar_t__ integer; } ;
struct TYPE_8__ {TYPE_1__ value; } ;
typedef  TYPE_2__ JsonVariant ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  JSON_VARIANT_INTEGER ; 
 TYPE_2__* JSON_VARIANT_MAGIC_ZERO_INTEGER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__**,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_2__**,int /*<<< orphan*/ ,int) ; 

int FUNC2(JsonVariant **ret, intmax_t i) {
        JsonVariant *v;
        int r;

        FUNC0(ret, -EINVAL);

        if (i == 0) {
                *ret = JSON_VARIANT_MAGIC_ZERO_INTEGER;
                return 0;
        }

        r = FUNC1(&v, JSON_VARIANT_INTEGER, sizeof(i));
        if (r < 0)
                return r;

        v->value.integer = i;
        *ret = v;

        return 0;
}