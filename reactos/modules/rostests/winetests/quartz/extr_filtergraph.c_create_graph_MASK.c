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
typedef  int /*<<< orphan*/  IFilterGraph2 ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_FilterGraph ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  IID_IFilterGraph2 ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC1 (int,char*,scalar_t__) ; 

__attribute__((used)) static IFilterGraph2 *FUNC2(void)
{
    IFilterGraph2 *ret;
    HRESULT hr;
    hr = FUNC0(&CLSID_FilterGraph, NULL, CLSCTX_INPROC_SERVER, &IID_IFilterGraph2, (void **)&ret);
    FUNC1(hr == S_OK, "Failed to create FilterGraph: %#x\n", hr);
    return ret;
}