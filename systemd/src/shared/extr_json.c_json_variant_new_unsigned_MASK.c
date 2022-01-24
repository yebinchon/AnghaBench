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
typedef  scalar_t__ uintmax_t ;
typedef  int /*<<< orphan*/  u ;
struct TYPE_7__ {scalar_t__ unsig; } ;
struct TYPE_8__ {TYPE_1__ value; } ;
typedef  TYPE_2__ JsonVariant ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 TYPE_2__* JSON_VARIANT_MAGIC_ZERO_UNSIGNED ; 
 int /*<<< orphan*/  JSON_VARIANT_UNSIGNED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__**,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_2__**,int /*<<< orphan*/ ,int) ; 

int FUNC2(JsonVariant **ret, uintmax_t u) {
        JsonVariant *v;
        int r;

        FUNC0(ret, -EINVAL);
        if (u == 0) {
                *ret = JSON_VARIANT_MAGIC_ZERO_UNSIGNED;
                return 0;
        }

        r = FUNC1(&v, JSON_VARIANT_UNSIGNED, sizeof(u));
        if (r < 0)
                return r;

        v->value.unsig = u;
        *ret = v;

        return 0;
}