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
typedef  int /*<<< orphan*/  IFileDialog ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_FileOpenDialog ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IFileDialog ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 int /*<<< orphan*/  IID_NULL ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC3 (int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC4(void)
{
    IFileDialog *fd;
    HRESULT hr;

    hr = FUNC0(&CLSID_FileOpenDialog, NULL, CLSCTX_INPROC_SERVER,
                          &IID_IFileDialog, (void**)&fd);
    FUNC3(hr == S_OK, "got 0x%08x.\n", hr);

if (0)
{
    /* crashes at least on Win8 */
    hr = FUNC2(fd, NULL);
}

    hr = FUNC2(fd, &IID_IUnknown);
    FUNC3(hr == S_OK, "got 0x%08x\n", hr);

    hr = FUNC2(fd, &IID_NULL);
    FUNC3(hr == S_OK, "got 0x%08x\n", hr);

    FUNC1(fd);
}