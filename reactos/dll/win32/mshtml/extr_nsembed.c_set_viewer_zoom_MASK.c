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
typedef  scalar_t__ nsresult ;
typedef  int /*<<< orphan*/  nsISupports ;
typedef  int /*<<< orphan*/  nsIDocShell ;
typedef  int /*<<< orphan*/  nsIContentViewer ;
struct TYPE_3__ {scalar_t__ navigation; } ;
typedef  TYPE_1__ NSContainer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  IID_nsIDocShell ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ NS_OK ; 
 int /*<<< orphan*/  FUNC2 (char*,float) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,float) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(NSContainer *nscontainer, float factor)
{
    nsIContentViewer *content_viewer;
    nsIDocShell *doc_shell;
    nsresult nsres;

    FUNC2("Setting to %f\n", factor);

    nsres = FUNC4((nsISupports*)nscontainer->navigation, &IID_nsIDocShell, (void**)&doc_shell);
    FUNC3(nsres == NS_OK);

    nsres = FUNC7(doc_shell, &content_viewer);
    FUNC3(nsres == NS_OK && content_viewer);
    FUNC8(doc_shell);

    nsres = FUNC6(content_viewer, factor);
    if(FUNC1(nsres))
        FUNC0("SetFullZoom failed: %08x\n", nsres);

    FUNC5(content_viewer);
}