#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  p_first; int /*<<< orphan*/ * pp_append; } ;
struct TYPE_6__ {int type; TYPE_1__ specifiers; int /*<<< orphan*/  combinator; int /*<<< orphan*/  psz_name; } ;
typedef  TYPE_2__ vlc_css_selector_t ;

/* Variables and functions */
 int /*<<< orphan*/  RELATION_SELF ; 
 TYPE_2__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 

vlc_css_selector_t * FUNC2( int type, const char *psz )
{
    vlc_css_selector_t *p_sel = FUNC0(1, sizeof(*p_sel));
    p_sel->psz_name = FUNC1(psz);
    p_sel->type = type;
    p_sel->combinator = RELATION_SELF;
    p_sel->specifiers.pp_append = &p_sel->specifiers.p_first;
    return p_sel;
}