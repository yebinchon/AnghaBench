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
struct TYPE_3__ {void* x11_variant; void* x11_model; void* x11_options; void* x11_layout; } ;
typedef  TYPE_1__ Context ;

/* Variables and functions */
 void* FUNC0 (void*) ; 

__attribute__((used)) static void FUNC1(Context *c) {
        c->x11_layout = FUNC0(c->x11_layout);
        c->x11_options = FUNC0(c->x11_options);
        c->x11_model = FUNC0(c->x11_model);
        c->x11_variant = FUNC0(c->x11_variant);
}