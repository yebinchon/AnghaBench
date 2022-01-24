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
struct TYPE_4__ {void* y1; void* x1; void* y0; void* x0; } ;
typedef  TYPE_1__ rectangle_t ;

/* Variables and functions */
 void* FUNC0 (void*,void*) ; 
 void* FUNC1 (void*,void*) ; 

__attribute__((used)) static void FUNC2( rectangle_t *r, const rectangle_t *n )
{
    r->x0 = FUNC1( r->x0, n->x0 );
    r->y0 = FUNC1( r->y0, n->y0 );
    r->x1 = FUNC0( r->x1, n->x1 );
    r->y1 = FUNC0( r->y1, n->y1 );
}