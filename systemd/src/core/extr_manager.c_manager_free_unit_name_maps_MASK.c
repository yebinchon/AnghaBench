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
struct TYPE_3__ {scalar_t__ unit_cache_mtime; int /*<<< orphan*/  unit_path_cache; void* unit_name_map; void* unit_id_map; } ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(Manager *m) {
        m->unit_id_map = FUNC0(m->unit_id_map);
        m->unit_name_map = FUNC0(m->unit_name_map);
        m->unit_path_cache = FUNC1(m->unit_path_cache);
        m->unit_cache_mtime =  0;
}