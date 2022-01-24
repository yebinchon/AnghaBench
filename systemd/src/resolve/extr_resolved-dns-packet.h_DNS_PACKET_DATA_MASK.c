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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_3__ {int /*<<< orphan*/ * _data; } ;
typedef  TYPE_1__ DnsPacket ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static inline uint8_t* FUNC2(DnsPacket *p) {
        if (FUNC1(!p))
                return NULL;

        if (p->_data)
                return p->_data;

        return ((uint8_t*) p) + FUNC0(sizeof(DnsPacket));
}