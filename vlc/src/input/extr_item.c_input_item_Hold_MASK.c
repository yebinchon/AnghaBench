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
typedef  int /*<<< orphan*/  input_item_t ;
struct TYPE_3__ {int /*<<< orphan*/  rc; } ;
typedef  TYPE_1__ input_item_owner_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

input_item_t *FUNC2( input_item_t *p_item )
{
    input_item_owner_t *owner = FUNC0(p_item);

    FUNC1( &owner->rc );
    return p_item;
}