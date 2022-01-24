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
typedef  int /*<<< orphan*/  IID ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  GUID ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,void**) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*,scalar_t__) ; 

__attribute__((used)) static void* FUNC2(const GUID *clsid, const char *name, const IID *iid, int line)
{
    void *obj = NULL;
    HRESULT hr;

    hr = FUNC0(clsid, NULL, CLSCTX_INPROC_SERVER, iid, &obj);
    FUNC1(hr == S_OK, "failed to create %s instance: 0x%08x\n", name, hr);

    return obj;
}