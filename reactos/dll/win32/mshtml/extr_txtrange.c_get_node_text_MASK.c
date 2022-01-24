#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ buf; } ;
typedef  TYPE_1__ wstrbuf_t ;
struct TYPE_8__ {int /*<<< orphan*/  nsnode; } ;
typedef  TYPE_2__ HTMLDOMNode ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/ * BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

HRESULT FUNC7(HTMLDOMNode *node, BSTR *ret)
{
    wstrbuf_t buf;
    HRESULT hres = S_OK;

    if (!FUNC6(&buf))
        return E_OUTOFMEMORY;
    FUNC4(&buf, node->nsnode);
    if(buf.buf) {
        *ret = FUNC1(buf.buf);
        if(!*ret)
            hres = E_OUTOFMEMORY;
    } else {
        *ret = NULL;
    }
    FUNC5(&buf);

    if(FUNC0(hres))
        FUNC2("ret %s\n", FUNC3(*ret));
    return hres;
}