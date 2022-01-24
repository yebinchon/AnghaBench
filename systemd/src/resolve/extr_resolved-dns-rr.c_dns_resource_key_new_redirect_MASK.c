#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  name; } ;
struct TYPE_16__ {int /*<<< orphan*/  name; } ;
struct TYPE_18__ {scalar_t__ type; int /*<<< orphan*/  class; TYPE_2__ dname; struct TYPE_18__ const* key; TYPE_1__ cname; } ;
typedef  TYPE_3__ DnsResourceRecord ;
typedef  TYPE_3__ DnsResourceKey ;

/* Variables and functions */
 scalar_t__ DNS_TYPE_CNAME ; 
 int /*<<< orphan*/  DNS_TYPE_DNAME ; 
 TYPE_3__ const* FUNC0 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__ const*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__ const*) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ ,scalar_t__,char*) ; 
 TYPE_3__* FUNC6 (TYPE_3__*) ; 
 TYPE_3__* FUNC7 (char*) ; 

DnsResourceKey* FUNC8(const DnsResourceKey *key, const DnsResourceRecord *cname) {
        int r;

        FUNC1(key);
        FUNC1(cname);

        FUNC1(FUNC0(cname->key->type, DNS_TYPE_CNAME, DNS_TYPE_DNAME));

        if (cname->key->type == DNS_TYPE_CNAME)
                return FUNC4(key->class, key->type, cname->cname.name);
        else {
                DnsResourceKey *k;
                char *destination = NULL;

                r = FUNC2(FUNC3(key), FUNC3(cname->key), cname->dname.name, &destination);
                if (r < 0)
                        return NULL;
                if (r == 0)
                        return FUNC6((DnsResourceKey*) key);

                k = FUNC5(key->class, key->type, destination);
                if (!k)
                        return FUNC7(destination);

                return k;
        }
}