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
typedef  int int64_t ;
struct TYPE_3__ {int mask; } ;
typedef  TYPE_1__ LZSS ;

/* Variables and functions */

__attribute__((used)) static inline int FUNC0(LZSS *self, int64_t pos) { return (int)(pos & self->mask); }