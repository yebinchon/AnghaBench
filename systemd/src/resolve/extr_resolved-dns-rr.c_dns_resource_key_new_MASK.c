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
typedef  void* uint16_t ;
struct TYPE_4__ {int n_ref; void* type; void* class; } ;
typedef  TYPE_1__ DnsResourceKey ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 size_t FUNC3 (char const*) ; 

DnsResourceKey* FUNC4(uint16_t class, uint16_t type, const char *name) {
        DnsResourceKey *k;
        size_t l;

        FUNC0(name);

        l = FUNC3(name);
        k = FUNC1(sizeof(DnsResourceKey) + l + 1);
        if (!k)
                return NULL;

        k->n_ref = 1;
        k->class = class;
        k->type = type;

        FUNC2((char*) k + sizeof(DnsResourceKey), name);

        return k;
}