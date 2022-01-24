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
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  IFileDialog ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_FileOpenDialog ; 
 int /*<<< orphan*/  CLSID_FileSaveDialog ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IFileDialog ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC2 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(void)
{
    IFileDialog *pfd;
    HRESULT hr;
    LONG ref;

    FUNC4("Testing FileOpenDialog (advise)\n");
    hr = FUNC0(&CLSID_FileOpenDialog, NULL, CLSCTX_INPROC_SERVER,
                          &IID_IFileDialog, (void**)&pfd);
    FUNC2(hr == S_OK, "got 0x%08x.\n", hr);
    FUNC3(pfd);
    ref = FUNC1(pfd);
    FUNC2(!ref, "Got refcount %d, should have been released.\n", ref);

    FUNC4("Testing FileSaveDialog (advise)\n");
    hr = FUNC0(&CLSID_FileSaveDialog, NULL, CLSCTX_INPROC_SERVER,
                          &IID_IFileDialog, (void**)&pfd);
    FUNC2(hr == S_OK, "got 0x%08x.\n", hr);
    FUNC3(pfd);
    ref = FUNC1(pfd);
    FUNC2(!ref, "Got refcount %d, should have been released.\n", ref);
}