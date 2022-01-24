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
struct TYPE_3__ {size_t len; int /*<<< orphan*/ * ptr; } ;
typedef  TYPE_1__ ostream_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 

__attribute__((used)) static inline u8 *FUNC1(ostream_t *const out, size_t len) {
    if (len > out->len) {
        FUNC0();
    }
    u8 *const ptr = out->ptr;
    out->ptr += len;
    out->len -= len;

    return ptr;
}