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
typedef  int /*<<< orphan*/  JNIEnv ;

/* Variables and functions */
 int FZ_LOCK_MAX ; 
 int /*<<< orphan*/  FZ_STORE_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ TLS_OUT_OF_INDEXES ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  base_context ; 
 scalar_t__ context_key ; 
 int /*<<< orphan*/  drop_tls_context ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  load_droid_cjk_font ; 
 int /*<<< orphan*/  load_droid_fallback_font ; 
 int /*<<< orphan*/  load_droid_font ; 
 int /*<<< orphan*/  locks ; 
 int /*<<< orphan*/ * mutexes ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(JNIEnv *env)
{
	int i;

#ifdef _WIN32
	/* No destructor on windows. We will leak contexts.
	 * There is no easy way around this, but this page:
	 * http://stackoverflow.com/questions/3241732/is-there-anyway-to-dynamically-free-thread-local-storage-in-the-win32-apis/3245082#3245082
	 * suggests a workaround that we can implement if we
	 * need to. */
	context_key = TlsAlloc();
	if (context_key == TLS_OUT_OF_INDEXES)
		return -1;
#else
	FUNC5(&context_key, drop_tls_context);
#endif

	for (i = 0; i < FZ_LOCK_MAX; i++)
#ifdef _WIN32
		InitializeCriticalSection(&mutexes[i]);
#else
		(void)FUNC6(&mutexes[i], NULL);
#endif

	base_context = FUNC3(NULL, &locks, FZ_STORE_DEFAULT);
	if (!base_context)
		return -1;

	FUNC4(base_context);

#ifdef HAVE_ANDROID
	fz_install_load_system_font_funcs(base_context,
		load_droid_font,
		load_droid_cjk_font,
		load_droid_fallback_font);
#endif

	return 0;
}