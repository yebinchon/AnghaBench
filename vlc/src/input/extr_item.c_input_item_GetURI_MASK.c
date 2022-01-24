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
struct TYPE_3__ {int /*<<< orphan*/  lock; scalar_t__ psz_uri; } ;
typedef  TYPE_1__ input_item_t ;

/* Variables and functions */
 char* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

char *FUNC3( input_item_t *p_i )
{
    FUNC1( &p_i->lock );

    char *psz_s = p_i->psz_uri ? FUNC0( p_i->psz_uri ) : NULL;

    FUNC2( &p_i->lock );
    return psz_s;
}