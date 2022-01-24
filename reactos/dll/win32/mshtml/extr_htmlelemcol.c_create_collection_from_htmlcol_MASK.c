#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nsIDOMNode ;
typedef  int /*<<< orphan*/  nsIDOMHTMLCollection ;
struct TYPE_2__ {size_t len; size_t size; int /*<<< orphan*/ * buf; } ;
typedef  TYPE_1__ elem_vector_t ;
typedef  size_t UINT32 ;
typedef  int /*<<< orphan*/  IHTMLElementCollection ;
typedef  int /*<<< orphan*/  HTMLElement ;
typedef  int /*<<< orphan*/  HTMLDocumentNode ;
typedef  int /*<<< orphan*/  HTMLDOMNode ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

IHTMLElementCollection *FUNC9(HTMLDocumentNode *doc, nsIDOMHTMLCollection *nscol)
{
    UINT32 length = 0, i;
    elem_vector_t buf;
    HTMLDOMNode *node;
    HRESULT hres = S_OK;

    FUNC6(nscol, &length);

    buf.len = buf.size = length;
    if(buf.len) {
        nsIDOMNode *nsnode;

        buf.buf = FUNC4(buf.size*sizeof(HTMLElement*));

        for(i=0; i<length; i++) {
            FUNC7(nscol, i, &nsnode);
            hres = FUNC3(doc, nsnode, TRUE, &node);
            FUNC8(nsnode);
            if(FUNC0(hres))
                break;
            buf.buf[i] = FUNC2(node);
        }
    }else {
        buf.buf = NULL;
    }

    if(FUNC0(hres)) {
        FUNC5(buf.buf);
        return NULL;
    }

    return FUNC1(buf.buf, buf.len);
}