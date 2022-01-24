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
struct TYPE_3__ {struct TYPE_3__* p_next; int /*<<< orphan*/  p_declarations; int /*<<< orphan*/  p_selectors; } ;
typedef  TYPE_1__ vlc_css_rule_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3( const vlc_css_rule_t *p_rule, int depth )
{
    int j = 0;
    while(p_rule)
    {
        for(int i=0;i<depth;i++) FUNC0(" "); FUNC0("rule %d:\n", j++);
        FUNC2( p_rule->p_selectors, depth + 1 );
        FUNC1( p_rule->p_declarations, depth + 1 );
        p_rule = p_rule->p_next;
    }
}