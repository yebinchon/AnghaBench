#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int member_2; int size; int /*<<< orphan*/  len; int /*<<< orphan*/  buf; int /*<<< orphan*/  member_1; int /*<<< orphan*/ * member_0; } ;
typedef  TYPE_1__ elem_vector_t ;
struct TYPE_11__ {int /*<<< orphan*/  doc; } ;
typedef  int /*<<< orphan*/  IHTMLElementCollection ;
typedef  int /*<<< orphan*/  HTMLElement ;
typedef  TYPE_2__ HTMLDOMNode ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

IHTMLElementCollection *FUNC7(HTMLDOMNode *node, BOOL include_root)
{
    elem_vector_t buf = {NULL, 0, 8};

    buf.buf = FUNC5(buf.size*sizeof(HTMLElement*));

    if(include_root) {
        FUNC6(node);
        FUNC3(&buf, FUNC2(node));
    }
    FUNC1(node->doc, node, &buf);
    FUNC4(&buf);

    return FUNC0(buf.buf, buf.len);
}