#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nsISelection ;
typedef  int /*<<< orphan*/  nsIDOMRange ;
typedef  int /*<<< orphan*/  nsIDOMNode ;
typedef  int /*<<< orphan*/  nsIDOMHTMLElement ;
typedef  int /*<<< orphan*/  nsIDOMElement ;
typedef  int /*<<< orphan*/  nsAString ;
typedef  scalar_t__ cpp_bool ;
struct TYPE_7__ {int /*<<< orphan*/  nsdoc; } ;
struct TYPE_6__ {TYPE_5__* doc_node; } ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int LONG ;
typedef  TYPE_1__ HTMLDocument ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  VARIANT_TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  fontW ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sizeW ; 

__attribute__((used)) static void FUNC19(HTMLDocument *This, LPCWSTR size)
{
    nsISelection *nsselection;
    cpp_bool collapsed;
    nsIDOMHTMLElement *elem;
    nsIDOMRange *range;
    LONG range_cnt = 0;
    nsAString size_str;
    nsAString val_str;

    if(!This->doc_node->nsdoc) {
        FUNC1("NULL nsdoc\n");
        return;
    }

    nsselection = FUNC3(This);
    if(!nsselection)
        return;

    FUNC13(nsselection, &range_cnt);
    if(range_cnt != 1) {
        FUNC0("range_cnt %d not supprted\n", range_cnt);
        if(!range_cnt) {
            FUNC14(nsselection);
            return;
        }
    }

    FUNC2(This->doc_node, fontW, &elem);

    FUNC5(&size_str, sizeW);
    FUNC5(&val_str, size);

    FUNC7(elem, &size_str, &val_str);
    FUNC4(&val_str);

    FUNC12(nsselection, 0, &range);
    FUNC11(nsselection, &collapsed);
    FUNC15(nsselection);

    FUNC9(range, (nsIDOMNode*)elem);

    if(collapsed) {
        FUNC10(nsselection, (nsIDOMNode*)elem, 0);
    }else {
        /* Remove all size attributes from the range */
        FUNC17((nsIDOMElement*)elem, fontW, &size_str);
        FUNC16(nsselection, (nsIDOMNode*)elem);
    }

    FUNC14(nsselection);
    FUNC8(range);
    FUNC6(elem);

    FUNC4(&size_str);

    FUNC18(This, VARIANT_TRUE);
}