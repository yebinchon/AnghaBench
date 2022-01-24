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
typedef  scalar_t__ ULONG ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IHTMLDocument2 ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC3 (int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC4(IHTMLDocument2 *doc)
{
    IUnknown *unk;
    ULONG ref;
    HRESULT hres;

    /* Some broken IEs don't like if the last released reference is IHTMLDocument2 iface.
     * To workaround it, we release it via IUnknown iface */
    hres = FUNC0(doc, &IID_IUnknown, (void**)&unk);
    FUNC3(hres == S_OK, "Could not get IUnknown iface: %08x\n", hres);

    FUNC1(doc);
    ref = FUNC2(unk);
    FUNC3(!ref, "ref = %d\n", ref);
}