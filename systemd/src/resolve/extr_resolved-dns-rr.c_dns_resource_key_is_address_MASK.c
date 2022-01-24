#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ class; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ DnsResourceKey ;

/* Variables and functions */
 scalar_t__ DNS_CLASS_IN ; 
 int /*<<< orphan*/  DNS_TYPE_A ; 
 int /*<<< orphan*/  DNS_TYPE_AAAA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*) ; 

bool FUNC2(const DnsResourceKey *key) {
        FUNC1(key);

        /* Check if this is an A or AAAA resource key */

        return key->class == DNS_CLASS_IN && FUNC0(key->type, DNS_TYPE_A, DNS_TYPE_AAAA);
}