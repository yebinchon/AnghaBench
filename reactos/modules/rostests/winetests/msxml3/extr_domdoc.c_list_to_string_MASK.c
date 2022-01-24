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
typedef  int LONG ;
typedef  int /*<<< orphan*/  IXMLDOMNodeList ;
typedef  int /*<<< orphan*/  IXMLDOMNode ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static char *FUNC8(IXMLDOMNodeList *list)
{
    static char buf[4096];
    char *pos = buf;
    LONG len = 0;
    HRESULT hr;
    int i;

    if (list == NULL)
    {
        FUNC6(buf, "(null)");
        return buf;
    }
    hr = FUNC0(list, &len);
    FUNC4(hr == S_OK, "got 0x%08x\n", hr);
    for (i = 0; i < len; i++)
    {
        IXMLDOMNode *node;
        if (i > 0)
            *(pos++) = ' ';
        FUNC5(FUNC1(list, &node));
        FUNC3(node, pos);
        pos += FUNC7(pos);
        FUNC2(node);
    }
    *pos = 0;
    return buf;
}