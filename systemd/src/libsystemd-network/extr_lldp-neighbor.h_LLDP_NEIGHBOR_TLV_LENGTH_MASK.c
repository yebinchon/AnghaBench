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
typedef  int uint8_t ;
struct TYPE_4__ {int rindex; } ;
typedef  TYPE_1__ sd_lldp_neighbor ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__ const*) ; 

__attribute__((used)) static inline size_t FUNC1(const sd_lldp_neighbor *n) {
        uint8_t *p;

        p = (uint8_t*) FUNC0(n) + n->rindex;
        return p[1] + (((size_t) (p[0] & 1)) << 8);
}