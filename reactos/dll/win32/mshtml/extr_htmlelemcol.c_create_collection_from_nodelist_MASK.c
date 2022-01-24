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
typedef  int /*<<< orphan*/  nsIDOMNodeList ;
typedef  int /*<<< orphan*/  nsIDOMNode ;
struct TYPE_3__ {int size; scalar_t__ len; int /*<<< orphan*/ * buf; } ;
typedef  TYPE_1__ elem_vector_t ;
typedef  scalar_t__ UINT32 ;
typedef  int /*<<< orphan*/  IHTMLElementCollection ;
typedef  int /*<<< orphan*/  HTMLElement ;
typedef  int /*<<< orphan*/  HTMLDocumentNode ;
typedef  int /*<<< orphan*/  HTMLDOMNode ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC5 (int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

IHTMLElementCollection *FUNC10(HTMLDocumentNode *doc, nsIDOMNodeList *nslist)
{
    UINT32 length = 0, i;
    HTMLDOMNode *node;
    elem_vector_t buf;
    HRESULT hres;

    FUNC7(nslist, &length);

    buf.len = 0;
    buf.size = length;
    if(length) {
        nsIDOMNode *nsnode;

        buf.buf = FUNC5(buf.size*sizeof(HTMLElement*));

        for(i=0; i<length; i++) {
            FUNC8(nslist, i, &nsnode);
            if(FUNC6(nsnode)) {
                hres = FUNC4(doc, nsnode, TRUE, &node);
                if(FUNC0(hres))
                    continue;
                buf.buf[buf.len++] = FUNC2(node);
            }
            FUNC9(nsnode);
        }

        FUNC3(&buf);
    }else {
        buf.buf = NULL;
    }

    return FUNC1(buf.buf, buf.len);
}