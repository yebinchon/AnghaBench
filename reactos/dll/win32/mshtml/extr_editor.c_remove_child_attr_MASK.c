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
typedef  int /*<<< orphan*/  nsIDOMNodeList ;
typedef  int /*<<< orphan*/  nsIDOMNode ;
typedef  int /*<<< orphan*/  nsIDOMElement ;
typedef  int /*<<< orphan*/  nsAString ;
typedef  int /*<<< orphan*/  cpp_bool ;
typedef  scalar_t__ UINT32 ;
typedef  int /*<<< orphan*/  UINT16 ;
typedef  int /*<<< orphan*/  PRUnichar ;
typedef  int /*<<< orphan*/  LPCWSTR ;

/* Variables and functions */
 int /*<<< orphan*/  ELEMENT_NODE ; 
 int /*<<< orphan*/  IID_nsIDOMElement ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(nsIDOMElement *elem, LPCWSTR tag, nsAString *attr_str)
{
    cpp_bool has_children;
    UINT32 child_cnt, i;
    nsIDOMNode *child_node;
    nsIDOMNodeList *node_list;
    UINT16 node_type;

    FUNC5(elem, &has_children);
    if(!has_children)
        return;

    FUNC3(elem, &node_list);
    FUNC8(node_list, &child_cnt);

    for(i=0; i<child_cnt; i++) {
        FUNC9(node_list, i, &child_node);

        FUNC11(child_node, &node_type);
        if(node_type == ELEMENT_NODE) {
            nsIDOMElement *child_elem;
            nsAString tag_str;
            const PRUnichar *ctag;

            FUNC12(child_node, &IID_nsIDOMElement, (void**)&child_elem);

            FUNC2(&tag_str, NULL);
            FUNC4(child_elem, &tag_str);
            FUNC1(&tag_str, &ctag);

            if(!FUNC14(ctag, tag))
                /* FIXME: remove node if there are no more attributes */
                FUNC7(child_elem, attr_str);

            FUNC0(&tag_str);

            FUNC15(child_elem, tag, attr_str);

            FUNC6(child_elem);
        }

        FUNC13(child_node);
    }

    FUNC10(node_list);
}