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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_4__ {int /*<<< orphan*/ * window; } ;
typedef  TYPE_1__ LZSS ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline uint8_t *FUNC1(LZSS *self, int64_t pos) { return &self->window[FUNC0(self, pos)]; }