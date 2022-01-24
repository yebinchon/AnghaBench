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
typedef  int /*<<< orphan*/  IXMLDOMNodeList ;
typedef  int /*<<< orphan*/  IXMLDOMNode ;
typedef  int /*<<< orphan*/  IXMLDOMDocument2 ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC10(int line, const char *ver, IXMLDOMDocument2* doc, char const* str)
{
    IXMLDOMNode *node1, *node2;
    IXMLDOMNodeList *list;
    BSTR bstr;

    FUNC9(FUNC0(doc, FUNC6("//*[local-name()='html']"), &list));
    FUNC9(FUNC1(list, 0, &node1));
    FUNC9(FUNC1(list, 1, &node2));
    FUNC9(FUNC2(list));
    FUNC8(list, "E2.E10.E2.E2.D1 E4.E10.E2.E2.D1");

    FUNC9(FUNC4(node1, &list));
    FUNC8(list,
            "T1.E2.E10.E2.E2.D1 [4]2.E2.E10.E2.E2.D1 T3.E2.E10.E2.E2.D1 "
            "E4.E2.E10.E2.E2.D1 T5.E2.E10.E2.E2.D1 E6.E2.E10.E2.E2.D1 "
            "E7.E2.E10.E2.E2.D1 E8.E2.E10.E2.E2.D1 T9.E2.E10.E2.E2.D1");
    FUNC9(FUNC5(node1, &bstr));
    if (str)
    {
        FUNC7(bstr, str);
    }
    else
    {
        FUNC7(bstr, "\n                 This is a  description. \n            ");
    }
    FUNC3(node1);

    FUNC9(FUNC4(node2, &list));
    FUNC8(list,
            "T1.E4.E10.E2.E2.D1 E2.E4.E10.E2.E2.D1 T3.E4.E10.E2.E2.D1 "
            "E4.E4.E10.E2.E2.D1 T5.E4.E10.E2.E2.D1 E6.E4.E10.E2.E2.D1 T7.E4.E10.E2.E2.D1");
    FUNC9(FUNC5(node2, &bstr));
    FUNC7(bstr,
            "\n                This is a description with preserved whitespace. \n            ");
    FUNC3(node2);
}