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
struct msxmlsupported_data_t {int* supported; int /*<<< orphan*/ ** ifaces; int /*<<< orphan*/  name; scalar_t__ clsid; } ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct msxmlsupported_data_t *table)
{
    while (table->clsid)
    {
        IUnknown *unk;
        HRESULT hr;
        int i;

        for (i = 0; i < FUNC0(table->ifaces) && table->ifaces[i] != NULL; i++)
        {
            hr = FUNC1(table->clsid, NULL, CLSCTX_INPROC_SERVER, table->ifaces[i], (void**)&unk);
            if (hr == S_OK) FUNC2(unk);

            table->supported[i] = hr == S_OK;
            if (hr != S_OK) FUNC4("class %s, iface %s not supported\n", table->name, FUNC3(table->ifaces[i]));
        }

        table++;
    }
}