#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  Sid; } ;
struct TYPE_6__ {TYPE_1__ User; } ;
typedef  TYPE_2__ TOKEN_USER ;
typedef  int /*<<< orphan*/ * PSID ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ **) ; 
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TOKEN_QUERY ; 
 int /*<<< orphan*/  TokenUser ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static PSID FUNC11(void) {
	TOKEN_USER* tu = NULL;
	DWORD len;
	HANDLE token;
	PSID ret = NULL;
	char* psid_string = NULL;

	if (!FUNC6(FUNC2(), TOKEN_QUERY, &token)) {
		FUNC10("OpenProcessToken failed: %s\n", FUNC7());
		return NULL;
	}

	if (!FUNC4(token, TokenUser, tu, 0, &len)) {
		if (FUNC3() != ERROR_INSUFFICIENT_BUFFER) {
			FUNC10("GetTokenInformation (pre) failed: %s\n", FUNC7());
			return NULL;
		}
		tu = (TOKEN_USER*)FUNC8(1, len);
	}
	if (tu == NULL) {
		return NULL;
	}

	if (FUNC4(token, TokenUser, tu, len, &len)) {
		/*
		 * now of course, the interesting thing is that if you return tu->User.Sid
		 * but free tu, the PSID pointer becomes invalid after a while.
		 * The workaround? Convert to string then back to PSID
		 */
		if (!FUNC0(tu->User.Sid, &psid_string)) {
			FUNC10("Unable to convert SID to string: %s\n", FUNC7());
			ret = NULL;
		} else {
			if (!FUNC1(psid_string, &ret)) {
				FUNC10("Unable to convert string back to SID: %s\n", FUNC7());
				ret = NULL;
			}
			// MUST use LocalFree()
			FUNC5(psid_string);
		}
	} else {
		ret = NULL;
		FUNC10("GetTokenInformation (real) failed: %s\n", FUNC7());
	}
	FUNC9(tu);
	return ret;
}