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
typedef  scalar_t__ vtable_ptr ;
typedef  int /*<<< orphan*/  rtti_object_locator ;

/* Variables and functions */
 scalar_t__* FUNC0 (void*) ; 

__attribute__((used)) static inline const rtti_object_locator *FUNC1( void *cppobj )
{
    const vtable_ptr *vtable = FUNC0( cppobj );
    return (const rtti_object_locator *)vtable[-1];
}