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
typedef  int /*<<< orphan*/  IVBSAXAttributes ;
typedef  int /*<<< orphan*/  ISAXAttributes ;
typedef  int /*<<< orphan*/  IMXAttributes ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_SAXAttributes ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  IID_IMXAttributes ; 
 int /*<<< orphan*/  IID_ISAXAttributes ; 
 int /*<<< orphan*/  IID_IVBSAXAttributes ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 

__attribute__((used)) static void FUNC8(void)
{
    IVBSAXAttributes *vbsaxattr, *vbsaxattr2;
    ISAXAttributes *saxattr;
    IMXAttributes *mxattr;
    HRESULT hr;

    hr = FUNC0(&CLSID_SAXAttributes, NULL, CLSCTX_INPROC_SERVER,
            &IID_IMXAttributes, (void**)&mxattr);
    FUNC1(hr, S_OK);

    FUNC2(mxattr, 1);
    hr = FUNC3(mxattr, &IID_ISAXAttributes, (void**)&saxattr);
    FUNC1(hr, S_OK);

    FUNC2(mxattr, 2);
    FUNC2(saxattr, 2);

    hr = FUNC3(mxattr, &IID_IVBSAXAttributes, (void**)&vbsaxattr);
    FUNC1(hr, S_OK);

    FUNC2(vbsaxattr, 3);
    FUNC2(mxattr, 3);
    FUNC2(saxattr, 3);

    hr = FUNC5(saxattr, &IID_IVBSAXAttributes, (void**)&vbsaxattr2);
    FUNC1(hr, S_OK);

    FUNC2(vbsaxattr, 4);
    FUNC2(mxattr, 4);
    FUNC2(saxattr, 4);

    FUNC4(mxattr);
    FUNC6(saxattr);
    FUNC7(vbsaxattr);
    FUNC7(vbsaxattr2);
}