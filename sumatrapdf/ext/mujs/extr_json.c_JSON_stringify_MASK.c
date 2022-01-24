#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  js_State ;
struct TYPE_5__ {char* s; } ;
typedef  TYPE_1__ js_Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__**,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_1__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *,int) ; 
 char* FUNC14 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC17 (char*,char,int) ; 
 int FUNC18 (char const*) ; 

__attribute__((used)) static void FUNC19(js_State *J)
{
	js_Buffer *sb = NULL;
	char buf[12];
	const char *s, *gap;
	int n;

	gap = NULL;

	if (FUNC5(J, 3)) {
		n = FUNC13(J, 3);
		if (n < 0) n = 0;
		if (n > 10) n = 10;
		FUNC17(buf, ' ', n);
		buf[n] = 0;
		if (n > 0) gap = buf;
	} else if (FUNC6(J, 3)) {
		s = FUNC14(J, 3);
		n = FUNC18(s);
		if (n > 10) n = 10;
		FUNC16(buf, s, n);
		buf[n] = 0;
		if (n > 0) gap = buf;
	}

	if (FUNC15(J)) {
		FUNC4(J, sb);
		FUNC12(J);
	}

	FUNC7(J); /* wrapper */
	FUNC1(J, 1);
	FUNC2(J, -2, "", 0);
	if (!FUNC0(J, &sb, "", gap, 0)) {
		FUNC9(J);
	} else {
		FUNC10(J, &sb, 0);
		FUNC8(J, sb ? sb->s : "");
		FUNC11(J);
	}

	FUNC3(J);
	FUNC4(J, sb);
}