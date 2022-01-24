#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nsresult ;
typedef  int /*<<< orphan*/  nsISelection ;
struct TYPE_5__ {TYPE_1__* window; } ;
struct TYPE_4__ {int /*<<< orphan*/  nswindow; } ;
typedef  TYPE_2__ HTMLDocument ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

__attribute__((used)) static nsISelection *FUNC3(HTMLDocument *This)
{
    nsISelection *nsselection = NULL;
    nsresult nsres;

    nsres = FUNC2(This->window->nswindow, &nsselection);
    if(FUNC1(nsres))
        FUNC0("GetSelection failed %08x\n", nsres);

    return nsselection;

}