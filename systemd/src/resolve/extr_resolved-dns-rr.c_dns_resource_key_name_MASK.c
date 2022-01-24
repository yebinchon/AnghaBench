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
struct TYPE_3__ {char* _name; } ;
typedef  TYPE_1__ DnsResourceKey ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*) ; 

const char* FUNC1(const DnsResourceKey *key) {
        const char *name;

        if (!key)
                return NULL;

        if (key->_name)
                name = key->_name;
        else
                name = (char*) key + sizeof(DnsResourceKey);

        if (FUNC0(name))
                return ".";
        else
                return name;
}