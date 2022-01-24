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

void
FUNC10(void)
{
	/*
	 * Order of items should be strict reverse order of _PG_init. Please
	 * document any exceptions.
	 */
#ifdef TS_DEBUG
	_conn_mock_fini();
#endif
#ifdef TS_USE_OPENSSL
	_conn_ssl_fini();
#endif
	FUNC3();
	FUNC6();
	FUNC9();
	FUNC5();
	FUNC8();
	FUNC1();
	FUNC7();
	FUNC0();
}