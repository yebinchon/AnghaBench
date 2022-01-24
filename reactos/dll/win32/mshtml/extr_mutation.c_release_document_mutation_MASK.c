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
typedef  int /*<<< orphan*/  nsresult ;
typedef  int /*<<< orphan*/  nsIDocument ;
struct TYPE_3__ {int /*<<< orphan*/  nsIDocumentObserver_iface; int /*<<< orphan*/  nsdoc; } ;
typedef  TYPE_1__ HTMLDocumentNode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_nsIDocument ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  content_utils ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(HTMLDocumentNode *doc)
{
    nsIDocument *nsdoc;
    nsresult nsres;

    nsres = FUNC3(doc->nsdoc, &IID_nsIDocument, (void**)&nsdoc);
    if(FUNC1(nsres)) {
        FUNC0("Could not get nsIDocument: %08x\n", nsres);
        return;
    }

    FUNC2(content_utils, nsdoc, &doc->nsIDocumentObserver_iface);
    FUNC4(nsdoc);
}