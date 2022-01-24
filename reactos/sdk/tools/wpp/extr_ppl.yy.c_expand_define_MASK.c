#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* text; } ;
struct TYPE_7__ {scalar_t__ type; char* ident; TYPE_1__ subst; } ;
typedef  TYPE_2__ pp_entry_t ;
struct TYPE_8__ {char* input; int line_number; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ def_define ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,char*,int,char*,char*) ; 
 int macexpstackidx ; 
 scalar_t__ pp_flex_debug ; 
 TYPE_4__ pp_status ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC4(pp_entry_t *ppp)
{
	FUNC0(ppp->type == def_define);

	if(pp_flex_debug)
		FUNC1(stderr, "expand_define(%d): %s:%d: '%s' -> '%s'\n",
			macexpstackidx,
			pp_status.input,
			pp_status.line_number,
			ppp->ident,
			ppp->subst.text);
	if(ppp->subst.text && ppp->subst.text[0])
	{
		FUNC3(ppp, NULL, NULL, 0);
		FUNC2(ppp->subst.text);
	}
}