#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  fmt_out; int /*<<< orphan*/  fmt_in; } ;
typedef  TYPE_1__ filter_chain_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void FUNC3( filter_chain_t *p_chain )
{
    FUNC1( p_chain );

    FUNC0( &p_chain->fmt_in );
    FUNC0( &p_chain->fmt_out );

    FUNC2( p_chain );
}