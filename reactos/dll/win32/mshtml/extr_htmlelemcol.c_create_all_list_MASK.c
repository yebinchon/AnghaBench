#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nsresult ;
typedef  int /*<<< orphan*/  nsIDOMNodeList ;
typedef  int /*<<< orphan*/  nsIDOMNode ;
typedef  int /*<<< orphan*/  elem_vector_t ;
typedef  scalar_t__ UINT32 ;
struct TYPE_5__ {int /*<<< orphan*/  nsnode; } ;
typedef  int /*<<< orphan*/  HTMLDocumentNode ;
typedef  TYPE_1__ HTMLDOMNode ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__**) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

__attribute__((used)) static void FUNC11(HTMLDocumentNode *doc, HTMLDOMNode *elem, elem_vector_t *buf)
{
    nsIDOMNodeList *nsnode_list;
    nsIDOMNode *iter;
    UINT32 list_len = 0, i;
    nsresult nsres;
    HRESULT hres;

    nsres = FUNC10(elem->nsnode, &nsnode_list);
    if(FUNC3(nsres)) {
        FUNC0("GetChildNodes failed: %08x\n", nsres);
        return;
    }

    FUNC8(nsnode_list, &list_len);
    if(!list_len)
        return;

    for(i=0; i<list_len; i++) {
        nsres = FUNC9(nsnode_list, i, &iter);
        if(FUNC3(nsres)) {
            FUNC0("Item failed: %08x\n", nsres);
            continue;
        }

        if(FUNC7(iter)) {
            HTMLDOMNode *node;

            hres = FUNC6(doc, iter, TRUE, &node);
            if(FUNC1(hres)) {
                FUNC2("get_node failed: %08x\n", hres);
                continue;
            }

            FUNC5(buf, FUNC4(node));
            FUNC11(doc, node, buf);
        }
    }
}