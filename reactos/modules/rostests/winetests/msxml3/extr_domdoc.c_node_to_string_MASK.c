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
typedef  int /*<<< orphan*/  IXMLDOMNode ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  DOMNodeType ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  NODE_ATTRIBUTE ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC17(IXMLDOMNode *node, char *buf)
{
    HRESULT r = S_OK;
    DOMNodeType type;

    if (node == NULL)
    {
        FUNC11(buf, "(null)");
        return;
    }

    FUNC0(node);
    while (r == S_OK)
    {
        IXMLDOMNode *new_node;

        FUNC13(FUNC3(node, &type));
        FUNC10(type, buf);
        buf+=FUNC15(buf);

        if (type == NODE_ATTRIBUTE)
        {
            BSTR bstr;
            FUNC13(FUNC2(node, &bstr));
            *(buf++) = '\'';
            FUNC16(buf, "%ws", bstr);
            buf += FUNC15(buf);
            *(buf++) = '\'';
            FUNC7(bstr);

            r = FUNC5(node, FUNC8(".."), &new_node);
        }
        else
        {
            r = FUNC4(node, &new_node);
            FUNC14(buf, "%d", FUNC9(node));
            buf += FUNC15(buf);
        }

        FUNC12(FUNC6(r), "get_parentNode failed (%08x)\n", r);
        FUNC1(node);
        node = new_node;
        if (r == S_OK)
            *(buf++) = '.';
    }

    *buf = 0;
}