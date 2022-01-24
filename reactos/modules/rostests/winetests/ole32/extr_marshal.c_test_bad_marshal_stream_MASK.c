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
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IStream ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/  IID_IClassFactory ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MSHCTX_INPROC ; 
 int /*<<< orphan*/  MSHLFLAGS_NORMAL ; 
 scalar_t__ STG_E_READFAULT ; 
 int /*<<< orphan*/  STREAM_SEEK_SET ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  Test_ClassFactory ; 
 int /*<<< orphan*/  FUNC5 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__ (*) (int /*<<< orphan*/ *)) ; 
 int /*<<< orphan*/  ullZero ; 

__attribute__((used)) static void FUNC8(void)
{
    HRESULT hr;
    IStream *pStream = NULL;

    hr = FUNC2(NULL, TRUE, &pStream);
    FUNC7(hr, CreateStreamOnHGlobal);
    hr = FUNC0(pStream, &IID_IClassFactory, (IUnknown*)&Test_ClassFactory, MSHCTX_INPROC, NULL, MSHLFLAGS_NORMAL);
    FUNC7(hr, CoMarshalInterface);

    FUNC6();

    /* try to read beyond end of stream */
    hr = FUNC1(pStream);
    FUNC5(hr == STG_E_READFAULT, "Should have failed with STG_E_READFAULT, but returned 0x%08x instead\n", hr);

    /* now release for real */
    FUNC4(pStream, ullZero, STREAM_SEEK_SET, NULL);
    hr = FUNC1(pStream);
    FUNC7(hr, CoReleaseMarshalData);

    FUNC3(pStream);
}