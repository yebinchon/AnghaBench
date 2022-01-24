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
struct msxmlsupported_data_t {int supported; int /*<<< orphan*/  name; scalar_t__ clsid; } ;
typedef  int /*<<< orphan*/  REFIID ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct msxmlsupported_data_t *table, REFIID riid)
{
    while (table->clsid)
    {
        IUnknown *unk;
        HRESULT hr;

        hr = FUNC0(table->clsid, NULL, CLSCTX_INPROC_SERVER, riid, (void**)&unk);
        if (hr == S_OK) FUNC1(unk);

        table->supported = hr == S_OK;
        if (hr != S_OK) FUNC2("class %s not supported\n", table->name);

        table++;
    }
}