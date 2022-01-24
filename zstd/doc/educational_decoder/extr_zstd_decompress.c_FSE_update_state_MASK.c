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
typedef  int /*<<< orphan*/  u8 ;
typedef  size_t u16 ;
typedef  int /*<<< orphan*/  i64 ;
struct TYPE_3__ {size_t const* new_state_base; int /*<<< orphan*/ * num_bits; } ;
typedef  TYPE_1__ FSE_dtable ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/  const* const,int /*<<< orphan*/  const,int /*<<< orphan*/ * const) ; 

__attribute__((used)) static inline void FUNC1(const FSE_dtable *const dtable,
                                    u16 *const state, const u8 *const src,
                                    i64 *const offset) {
    const u8 bits = dtable->num_bits[*state];
    const u16 rest = FUNC0(src, bits, offset);
    *state = dtable->new_state_base[*state] + rest;
}