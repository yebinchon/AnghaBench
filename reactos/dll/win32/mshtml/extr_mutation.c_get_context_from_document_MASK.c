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
typedef  scalar_t__ nsresult ;
typedef  int /*<<< orphan*/  nsIDocument ;
typedef  int /*<<< orphan*/  nsIDOMHTMLDocument ;
typedef  int /*<<< orphan*/  JSContext ;

/* Variables and functions */
 int /*<<< orphan*/  IID_nsIDocument ; 
 scalar_t__ NS_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  content_utils ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

JSContext *FUNC5(nsIDOMHTMLDocument *nsdoc)
{
    nsIDocument *doc;
    JSContext *ctx;
    nsresult nsres;

    nsres = FUNC3(nsdoc, &IID_nsIDocument, (void**)&doc);
    FUNC1(nsres == NS_OK);

    ctx = FUNC2(content_utils, doc);
    FUNC4(doc);

    FUNC0("ret %p\n", ctx);
    return ctx;
}