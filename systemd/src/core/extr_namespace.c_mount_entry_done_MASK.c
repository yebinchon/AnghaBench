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
struct TYPE_4__ {void* options_malloc; void* source_malloc; void* path_malloc; } ;
typedef  TYPE_1__ MountEntry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 void* FUNC1 (void*) ; 

__attribute__((used)) static void FUNC2(MountEntry *p) {
        FUNC0(p);

        p->path_malloc = FUNC1(p->path_malloc);
        p->source_malloc = FUNC1(p->source_malloc);
        p->options_malloc = FUNC1(p->options_malloc);
}