#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ ObjectType ;

/* Variables and functions */
 scalar_t__ CONTEXT_HEADER ; 
 scalar_t__ MMAP_CACHE_MAX_CONTEXTS ; 
 scalar_t__ OBJECT_UNUSED ; 
 scalar_t__ _OBJECT_TYPE_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static unsigned FUNC1(ObjectType type) {
        /* One context for each type, plus one catch-all for the rest */
        FUNC0(_OBJECT_TYPE_MAX <= MMAP_CACHE_MAX_CONTEXTS);
        FUNC0(CONTEXT_HEADER < MMAP_CACHE_MAX_CONTEXTS);
        return type > OBJECT_UNUSED && type < _OBJECT_TYPE_MAX ? type : 0;
}