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
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IHTMLDOMNode ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int*) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/ * FUNC2 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,scalar_t__) ; 

__attribute__((used)) static LONG FUNC4(unsigned line, IUnknown *unk)
{
    IHTMLDOMNode *node = FUNC2(line, unk);
    LONG type = -1;
    HRESULT hres;

    hres = FUNC1(node, &type);
    FUNC3(hres == S_OK, "get_nodeType failed: %08x\n", hres);

    FUNC0(node);

    return type;
}