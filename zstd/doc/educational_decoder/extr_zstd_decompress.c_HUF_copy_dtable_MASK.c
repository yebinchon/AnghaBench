#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {size_t max_bits; void* num_bits; void* symbols; } ;
typedef  TYPE_1__ HUF_dtable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 void* FUNC1 (size_t const) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,size_t const) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__* const,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(HUF_dtable *const dst,
                            const HUF_dtable *const src) {
    if (src->max_bits == 0) {
        FUNC3(dst, 0, sizeof(HUF_dtable));
        return;
    }

    const size_t size = (size_t)1 << src->max_bits;
    dst->max_bits = src->max_bits;

    dst->symbols = FUNC1(size);
    dst->num_bits = FUNC1(size);
    if (!dst->symbols || !dst->num_bits) {
        FUNC0();
    }

    FUNC2(dst->symbols, src->symbols, size);
    FUNC2(dst->num_bits, src->num_bits, size);
}