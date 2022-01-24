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
typedef  int /*<<< orphan*/  nsISelection ;
typedef  int /*<<< orphan*/  nsIDOMNode ;
typedef  int /*<<< orphan*/  nsIDOMHTMLElement ;
typedef  int /*<<< orphan*/  nsAString ;
typedef  scalar_t__ WCHAR ;
typedef  scalar_t__ UINT16 ;
typedef  scalar_t__ PRUnichar ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  HTMLDocument ;

/* Variables and functions */
 scalar_t__ DOCUMENT_NODE ; 
 scalar_t__ ELEMENT_NODE ; 
 int /*<<< orphan*/  IID_nsIDOMHTMLElement ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__ const*) ; 
 int /*<<< orphan*/  fontW ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__ const**) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sizeW ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__*,scalar_t__ const*) ; 

__attribute__((used)) static void FUNC18(HTMLDocument *This, WCHAR *ret)
{
    nsISelection *nsselection = FUNC4(This);
    nsIDOMHTMLElement *elem = NULL;
    nsIDOMNode *node = NULL, *tmp_node;
    nsAString tag_str;
    LPCWSTR tag;
    UINT16 node_type;
    nsresult nsres;

    *ret = 0;

    if(!nsselection)
        return;

    FUNC14(nsselection, &node);
    FUNC15(nsselection);

    while(node) {
        nsres = FUNC10(node, &node_type);
        if(FUNC0(nsres) || node_type == DOCUMENT_NODE)
            break;

        if(node_type == ELEMENT_NODE) {
            FUNC12(node, &IID_nsIDOMHTMLElement, (void**)&elem);

            FUNC7(&tag_str, NULL);
            FUNC8(elem, &tag_str);
            FUNC6(&tag_str, &tag);

            if(!FUNC16(tag, fontW)) {
                nsAString val_str;
                const PRUnichar *val;

                FUNC1("found font tag %p\n", elem);

                FUNC3(elem, sizeW, &val_str, &val);
                if(*val) {
                    FUNC1("found size %s\n", FUNC2(val));
                    FUNC17(ret, val);
                }

                FUNC5(&val_str);
            }

            FUNC5(&tag_str);
            FUNC9(elem);
        }

        if(*ret)
            break;

        tmp_node = node;
        FUNC11(node, &node);
        FUNC13(tmp_node);
    }

    if(node)
        FUNC13(node);
}