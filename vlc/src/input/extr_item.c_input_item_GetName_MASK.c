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
struct TYPE_3__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  psz_name; } ;
typedef  TYPE_1__ input_item_t ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

char *FUNC3( input_item_t *p_item )
{
    FUNC1( &p_item->lock );

    char *psz_name = p_item->psz_name ? FUNC0( p_item->psz_name ) : NULL;

    FUNC2( &p_item->lock );
    return psz_name;
}