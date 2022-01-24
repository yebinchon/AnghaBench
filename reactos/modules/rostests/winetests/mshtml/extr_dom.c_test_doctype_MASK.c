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
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IHTMLDocument2 ;
typedef  int /*<<< orphan*/  IHTMLDOMNode ;

/* Variables and functions */
 int /*<<< orphan*/  ET_COMMENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(IHTMLDocument2 *doc)
{
    IHTMLDocument2 *doc_node;
    IHTMLDOMNode *doctype;
    int type;

    doc_node = FUNC2(doc);
    doctype = FUNC3((IUnknown*)doc_node);
    FUNC1(doc_node);

    type = FUNC4((IUnknown*)doctype);
    FUNC5(type == 8, "type = %d\n", type);

    FUNC6((IUnknown*)doctype, "<!DOCTYPE html>");
    FUNC7((IUnknown*)doctype, ET_COMMENT);
    FUNC0(doctype);
}