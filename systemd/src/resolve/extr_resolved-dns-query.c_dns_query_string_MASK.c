#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char const* request_address_string; int /*<<< orphan*/  question_idna; int /*<<< orphan*/  question_utf8; int /*<<< orphan*/  request_address; int /*<<< orphan*/  request_family; scalar_t__ request_address_valid; } ;
typedef  TYPE_1__ DnsQuery ;

/* Variables and functions */
 char const* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const**) ; 

const char *FUNC2(DnsQuery *q) {
        const char *name;
        int r;

        /* Returns a somewhat useful human-readable lookup key string for this query */

        if (q->request_address_string)
                return q->request_address_string;

        if (q->request_address_valid) {
                r = FUNC1(q->request_family, &q->request_address, &q->request_address_string);
                if (r >= 0)
                        return q->request_address_string;
        }

        name = FUNC0(q->question_utf8);
        if (name)
                return name;

        return FUNC0(q->question_idna);
}