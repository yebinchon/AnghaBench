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
typedef  int ULONG_PTR ;
typedef  int ULONG ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IObjContext ;
typedef  int HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  APTTYPEQUALIFIER_NONE ; 
 int /*<<< orphan*/  APTTYPE_CURRENT ; 
 int /*<<< orphan*/  APTTYPE_MAINSTA ; 
 int CO_E_NOTINITIALIZED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int E_POINTER ; 
 int /*<<< orphan*/  IID_IObjContext ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int S_OK ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 
 int FUNC7 (int*) ; 
 int FUNC8 (int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static void FUNC11(void)
{
    HRESULT hr;
    ULONG refs;
    ULONG_PTR token, token2;
    IObjContext *ctx;

    if (!&pCoGetContextToken)
    {
        FUNC10("CoGetContextToken not present\n");
        return;
    }

    token = 0xdeadbeef;
    hr = FUNC7(&token);
    FUNC6(hr == CO_E_NOTINITIALIZED, "Expected CO_E_NOTINITIALIZED, got 0x%08x\n", hr);
    FUNC6(token == 0xdeadbeef, "Expected 0, got 0x%lx\n", token);

    FUNC9(APTTYPE_CURRENT, APTTYPEQUALIFIER_NONE);

    FUNC0(NULL);

    FUNC9(APTTYPE_MAINSTA, APTTYPEQUALIFIER_NONE);

    hr = FUNC7(NULL);
    FUNC6(hr == E_POINTER, "Expected E_POINTER, got 0x%08x\n", hr);

    token = 0;
    hr = FUNC7(&token);
    FUNC6(hr == S_OK, "Expected S_OK, got 0x%08x\n", hr);
    FUNC6(token, "Expected token != 0\n");

    token2 = 0;
    hr = FUNC7(&token2);
    FUNC6(hr == S_OK, "Expected S_OK, got 0x%08x\n", hr);
    FUNC6(token2 == token, "got different token\n");

    refs = FUNC4((IUnknown *)token);
    FUNC6(refs == 1, "Expected 1, got %u\n", refs);

    hr = FUNC8(&IID_IObjContext, (void **)&ctx);
    FUNC6(hr == S_OK, "Expected S_OK, got 0x%08x\n", hr);
    FUNC6(ctx == (IObjContext *)token, "Expected interface pointers to be the same\n");

    refs = FUNC2(ctx);
    FUNC6(refs == 3, "Expected 3, got %u\n", refs);

    refs = FUNC3(ctx);
    FUNC6(refs == 2, "Expected 2, got %u\n", refs);

    refs = FUNC5((IUnknown *)token);
    FUNC6(refs == 1, "Expected 1, got %u\n", refs);

    /* CoGetContextToken does not add a reference */
    token = 0;
    hr = FUNC7(&token);
    FUNC6(hr == S_OK, "Expected S_OK, got 0x%08x\n", hr);
    FUNC6(token, "Expected token != 0\n");
    FUNC6(ctx == (IObjContext *)token, "Expected interface pointers to be the same\n");

    refs = FUNC2(ctx);
    FUNC6(refs == 2, "Expected 1, got %u\n", refs);

    refs = FUNC3(ctx);
    FUNC6(refs == 1, "Expected 0, got %u\n", refs);

    refs = FUNC3(ctx);
    FUNC6(refs == 0, "Expected 0, got %u\n", refs);

    FUNC1();
}