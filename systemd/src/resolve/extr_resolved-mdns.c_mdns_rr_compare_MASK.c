#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_1__* key; } ;
struct TYPE_9__ {int /*<<< orphan*/  type; int /*<<< orphan*/  class; } ;
typedef  TYPE_2__ DnsResourceRecord ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 size_t FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int FUNC6 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int,char*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static int FUNC9(DnsResourceRecord * const *a, DnsResourceRecord * const *b) {
        DnsResourceRecord *x = *(DnsResourceRecord **) a, *y = *(DnsResourceRecord **) b;
        size_t m;
        int r;

        FUNC5(x);
        FUNC5(y);

        r = FUNC1(FUNC0(x->key->class), FUNC0(y->key->class));
        if (r != 0)
                return r;

        r = FUNC1(x->key->type, y->key->type);
        if (r != 0)
                return r;

        r = FUNC6(x, false);
        if (r < 0) {
                FUNC7(r, "Can't wire-format RR: %m");
                return 0;
        }

        r = FUNC6(y, false);
        if (r < 0) {
                FUNC7(r, "Can't wire-format RR: %m");
                return 0;
        }

        m = FUNC4(FUNC3(x), FUNC3(y));

        r = FUNC8(FUNC2(x), FUNC2(y), m);
        if (r != 0)
                return r;

        return FUNC1(FUNC3(x), FUNC3(y));
}