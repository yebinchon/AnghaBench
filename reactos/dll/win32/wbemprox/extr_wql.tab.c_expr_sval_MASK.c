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
struct string {int dummy; } ;
struct parser {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  sval; } ;
struct expr {TYPE_1__ u; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXPR_SVAL ; 
 struct expr* FUNC0 (struct parser*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct parser*,struct string const*) ; 

__attribute__((used)) static struct expr *FUNC2( struct parser *parser, const struct string *str )
{
    struct expr *e = FUNC0( parser, sizeof *e );
    if (e)
    {
        e->type = EXPR_SVAL;
        e->u.sval = FUNC1( parser, str );
        if (!e->u.sval)
            return NULL; /* e will be freed by query destructor */
    }
    return e;
}