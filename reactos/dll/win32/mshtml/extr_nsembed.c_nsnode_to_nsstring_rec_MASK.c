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
typedef  int /*<<< orphan*/  nsresult ;
typedef  int /*<<< orphan*/  nsIDocument ;
typedef  int /*<<< orphan*/  nsIDOMNodeList ;
typedef  int /*<<< orphan*/  nsIDOMNode ;
typedef  int /*<<< orphan*/  nsIContentSerializer ;
typedef  int /*<<< orphan*/  nsIContent ;
typedef  int /*<<< orphan*/  nsAString ;
typedef  scalar_t__ cpp_bool ;
typedef  scalar_t__ UINT32 ;
typedef  int UINT16 ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
#define  COMMENT_NODE 133 
#define  DOCUMENT_FRAGMENT_NODE 132 
#define  DOCUMENT_NODE 131 
#define  DOCUMENT_TYPE_NODE 130 
#define  ELEMENT_NODE 129 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_FAIL ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  IID_nsIContent ; 
 int /*<<< orphan*/  IID_nsIDocument ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
#define  TEXT_NODE 128 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC20(nsIContentSerializer *serializer, nsIDOMNode *nsnode, nsAString *str)
{
    nsIDOMNodeList *node_list = NULL;
    cpp_bool has_children = FALSE;
    nsIContent *nscontent;
    UINT16 type;
    nsresult nsres;

    FUNC16(nsnode, &has_children);

    nsres = FUNC15(nsnode, &type);
    if(FUNC2(nsres)) {
        FUNC0("GetType failed: %08x\n", nsres);
        return E_FAIL;
    }

    if(type != DOCUMENT_NODE) {
        nsres = FUNC17(nsnode, &IID_nsIContent, (void**)&nscontent);
        if(FUNC2(nsres)) {
            FUNC0("Could not get nsIContent interface: %08x\n", nsres);
            return E_FAIL;
        }
    }

    switch(type) {
    case ELEMENT_NODE:
        FUNC8(serializer, nscontent, nscontent, str);
        break;
    case TEXT_NODE:
        FUNC9(serializer, nscontent, 0, -1, str);
        break;
    case COMMENT_NODE:
        nsres = FUNC4(serializer, nscontent, 0, -1, str);
        break;
    case DOCUMENT_NODE: {
        nsIDocument *nsdoc;
        FUNC17(nsnode, &IID_nsIDocument, (void**)&nsdoc);
        FUNC6(serializer, nsdoc, str);
        FUNC19(nsdoc);
        break;
    }
    case DOCUMENT_TYPE_NODE:
        FUNC5(serializer, nscontent, str);
        break;
    case DOCUMENT_FRAGMENT_NODE:
        break;
    default:
        FUNC1("Unhandled type %u\n", type);
    }

    if(has_children) {
        UINT32 child_cnt, i;
        nsIDOMNode *child_node;

        FUNC14(nsnode, &node_list);
        FUNC11(node_list, &child_cnt);

        for(i=0; i<child_cnt; i++) {
            nsres = FUNC12(node_list, i, &child_node);
            if(FUNC3(nsres)) {
                FUNC20(serializer, child_node, str);
                FUNC18(child_node);
            }else {
                FUNC0("Item failed: %08x\n", nsres);
            }
        }

        FUNC13(node_list);
    }

    if(type == ELEMENT_NODE)
        FUNC7(serializer, nscontent, str);

    if(type != DOCUMENT_NODE)
        FUNC10(nscontent);
    return S_OK;
}