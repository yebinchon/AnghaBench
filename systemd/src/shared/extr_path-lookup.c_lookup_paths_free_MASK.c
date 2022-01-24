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
struct TYPE_3__ {void* temporary_dir; void* root_dir; void* runtime_control; void* persistent_control; void* transient; void* generator_late; void* generator_early; void* generator; void* runtime_attached; void* persistent_attached; void* runtime_config; void* persistent_config; int /*<<< orphan*/  search_path; } ;
typedef  TYPE_1__ LookupPaths ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(LookupPaths *p) {
        if (!p)
                return;

        p->search_path = FUNC1(p->search_path);

        p->persistent_config = FUNC0(p->persistent_config);
        p->runtime_config = FUNC0(p->runtime_config);

        p->persistent_attached = FUNC0(p->persistent_attached);
        p->runtime_attached = FUNC0(p->runtime_attached);

        p->generator = FUNC0(p->generator);
        p->generator_early = FUNC0(p->generator_early);
        p->generator_late = FUNC0(p->generator_late);

        p->transient = FUNC0(p->transient);

        p->persistent_control = FUNC0(p->persistent_control);
        p->runtime_control = FUNC0(p->runtime_control);

        p->root_dir = FUNC0(p->root_dir);
        p->temporary_dir = FUNC0(p->temporary_dir);
}