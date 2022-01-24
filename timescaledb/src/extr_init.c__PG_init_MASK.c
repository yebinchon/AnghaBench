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

/* Variables and functions */
 int /*<<< orphan*/  TIMESCALEDB_VERSION_MOD ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

void
FUNC15(void)
{
	/*
	 * Check extension_is loaded to catch certain errors such as calls to
	 * functions defined on the wrong extension version
	 */
	FUNC14(TIMESCALEDB_VERSION_MOD);
	FUNC13();
	FUNC12();

	FUNC0();
	FUNC9();
	FUNC1();
	FUNC10();
	FUNC6();
	FUNC2();
	FUNC7();
	FUNC11();
	FUNC8();
	FUNC4();
#ifdef TS_USE_OPENSSL
	_conn_ssl_init();
#endif
#ifdef TS_DEBUG
	_conn_mock_init();
#endif
}