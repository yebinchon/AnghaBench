#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  type; } ;
struct TYPE_10__ {int /*<<< orphan*/  type; } ;
struct TYPE_9__ {size_t n_keys; TYPE_3__** keys; } ;
struct TYPE_8__ {TYPE_4__* key; } ;
typedef  TYPE_1__ DnsResourceRecord ;
typedef  TYPE_2__ DnsQuestion ;

/* Variables and functions */
 int /*<<< orphan*/  DNS_TYPE_CNAME ; 
 int /*<<< orphan*/  DNS_TYPE_DNAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_3__*,TYPE_4__*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(DnsQuestion *q, DnsResourceRecord *rr, const char *search_domain) {
        size_t i;
        int r;

        FUNC1(rr);

        if (!q)
                return 0;

        if (!FUNC0(rr->key->type, DNS_TYPE_CNAME, DNS_TYPE_DNAME))
                return 0;

        for (i = 0; i < q->n_keys; i++) {
                /* For a {C,D}NAME record we can never find a matching {C,D}NAME record */
                if (!FUNC3(q->keys[i]->type))
                        return 0;

                r = FUNC2(q->keys[i], rr->key, search_domain);
                if (r != 0)
                        return r;
        }

        return 0;
}