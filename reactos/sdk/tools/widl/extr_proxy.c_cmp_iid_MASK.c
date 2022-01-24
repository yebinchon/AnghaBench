#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  attrs; } ;
typedef  TYPE_1__ type_t ;
typedef  int /*<<< orphan*/  UUID ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_UUID ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static int FUNC2( const void *ptr1, const void *ptr2 )
{
    const type_t * const *iface1 = ptr1;
    const type_t * const *iface2 = ptr2;
    const UUID *uuid1 = FUNC0( (*iface1)->attrs, ATTR_UUID );
    const UUID *uuid2 = FUNC0( (*iface2)->attrs, ATTR_UUID );
    return FUNC1( uuid1, uuid2, sizeof(UUID) );
}