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
typedef  int /*<<< orphan*/  HANDLE ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SecurityImpersonation ; 
 int TOKEN_DUPLICATE ; 
 int TOKEN_QUERY ; 
 scalar_t__ TokenImpersonation ; 
 scalar_t__ TokenPrimary ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static void FUNC15(void)
{
    HANDLE token, process_token;
    DWORD ret, token_type;

    ret = FUNC4(FUNC2(), TOKEN_DUPLICATE | TOKEN_QUERY, &process_token);
    FUNC5(ret, "OpenProcessToken error %d\n", FUNC3());

    ret = FUNC14(process_token, &token_type);
    FUNC5(token_type == TokenPrimary, "expected TokenPrimary, got %d\n", token_type);
    FUNC5(!ret, "access token should not be an impersonation token\n");

    ret = FUNC1(process_token, SecurityImpersonation, &token);
    FUNC5(ret, "DuplicateToken error %d\n", FUNC3());

    ret = FUNC14(token, &token_type);
    FUNC5(ret, "access token should be a valid impersonation token\n");
    FUNC5(token_type == TokenImpersonation, "expected TokenImpersonation, got %d\n", token_type);

    FUNC9(token);
    FUNC6(token);
    FUNC10(token);
    FUNC12(token);
    FUNC7(token);
    FUNC8();
    FUNC13();
    FUNC11();
    /* FIXME: test other kernel object types */

    FUNC0(process_token);
    FUNC0(token);
}