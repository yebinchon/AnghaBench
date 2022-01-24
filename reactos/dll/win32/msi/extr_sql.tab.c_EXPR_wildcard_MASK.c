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
struct expr {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXPR_WILDCARD ; 
 struct expr* FUNC0 (void*,int) ; 

__attribute__((used)) static struct expr * FUNC1( void *info )
{
    struct expr *e = FUNC0( info, sizeof *e );
    if( e )
    {
        e->type = EXPR_WILDCARD;
    }
    return e;
}