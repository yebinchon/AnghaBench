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
struct TYPE_4__ {size_t maxcount; struct TYPE_4__* sorted; struct TYPE_4__* strings; struct TYPE_4__* data; scalar_t__ nonpersistent_refcount; scalar_t__ persistent_refcount; } ;
typedef  TYPE_1__ string_table ;
typedef  int /*<<< orphan*/  VOID ;
typedef  size_t UINT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

VOID FUNC1( string_table *st )
{
    UINT i;

    for( i=0; i<st->maxcount; i++ )
    {
        if( st->strings[i].persistent_refcount ||
            st->strings[i].nonpersistent_refcount )
            FUNC0( st->strings[i].data );
    }
    FUNC0( st->strings );
    FUNC0( st->sorted );
    FUNC0( st );
}