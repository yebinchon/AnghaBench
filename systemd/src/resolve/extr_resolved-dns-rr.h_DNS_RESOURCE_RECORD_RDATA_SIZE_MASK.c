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
struct TYPE_3__ {scalar_t__ wire_format_rdata_offset; scalar_t__ wire_format_size; int /*<<< orphan*/  wire_format; } ;
typedef  TYPE_1__ DnsResourceRecord ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static inline size_t FUNC1(const DnsResourceRecord *rr) {
        if (!rr)
                return 0;
        if (!rr->wire_format)
                return 0;

        FUNC0(rr->wire_format_rdata_offset <= rr->wire_format_size);
        return rr->wire_format_size - rr->wire_format_rdata_offset;
}