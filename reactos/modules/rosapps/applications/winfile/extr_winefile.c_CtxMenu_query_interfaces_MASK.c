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
typedef  scalar_t__ LPCONTEXTMENU3 ;
typedef  scalar_t__ LPCONTEXTMENU2 ;
typedef  int /*<<< orphan*/  IContextMenu ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IContextMenu2 ; 
 int /*<<< orphan*/  IID_IContextMenu3 ; 
 scalar_t__ NOERROR ; 
 scalar_t__ s_pctxmenu2 ; 
 scalar_t__ s_pctxmenu3 ; 

__attribute__((used)) static IContextMenu* FUNC3(IContextMenu* pcm1)
{
	IContextMenu* pcm = NULL;

	FUNC0();

	if (FUNC1(pcm1, &IID_IContextMenu3, (void**)&pcm) == NOERROR)
		s_pctxmenu3 = (LPCONTEXTMENU3)pcm;
	else if (FUNC1(pcm1, &IID_IContextMenu2, (void**)&pcm) == NOERROR)
		s_pctxmenu2 = (LPCONTEXTMENU2)pcm;

	if (pcm) {
		FUNC2(pcm1);
		return pcm;
	} else
		return pcm1;
}