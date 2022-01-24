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
struct para_num {int /*<<< orphan*/ * text; int /*<<< orphan*/ * style; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2( struct para_num *pn )
{
    if (pn->style)
    {
        FUNC1( pn->style );
        pn->style = NULL;
    }
    FUNC0( pn->text );
    pn->text = NULL;
}