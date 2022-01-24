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
 int /*<<< orphan*/  DEFAULT_ROLE_READ_ALL_SETTINGS ; 
 int /*<<< orphan*/  EXTENSION_NAME ; 
 int /*<<< orphan*/  FATAL ; 
 char* FUNC0 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 scalar_t__ FUNC7 () ; 

__attribute__((used)) static void
FUNC8()
{
	/* cannot use GUC variable here since extension not yet loaded */
	char *allow_install_without_preload =
		FUNC0("timescaledb.allow_install_without_preload", NULL, true);

	if (allow_install_without_preload == NULL || FUNC6(allow_install_without_preload, "on") != 0)
	{
		/*
		 * These are FATAL because otherwise the loader ends up in a weird
		 * half-loaded state after an ERROR
		 */
		/* Only privileged users can get the value of `config file` */

#if PG96
		if (superuser())
#else
		if (FUNC5(FUNC1(), DEFAULT_ROLE_READ_ALL_SETTINGS))
#endif
		{
			char *config_file = FUNC0("config_file", NULL, false);

			FUNC2(FATAL,
					(FUNC4("extension \"%s\" must be preloaded", EXTENSION_NAME),
					 FUNC3("Please preload the timescaledb library via "
							 "shared_preload_libraries.\n\n"
							 "This can be done by editing the config file at: %1$s\n"
							 "and adding 'timescaledb' to the list in the shared_preload_libraries "
							 "config.\n"
							 "	# Modify postgresql.conf:\n	shared_preload_libraries = "
							 "'timescaledb'\n\n"
							 "Another way to do this, if not preloading other libraries, is with "
							 "the command:\n"
							 "	echo \"shared_preload_libraries = 'timescaledb'\" >> %1$s \n\n"
							 "(Will require a database restart.)\n\n"
							 "If you REALLY know what you are doing and would like to load the "
							 "library without preloading, you can disable this check with: \n"
							 "	SET timescaledb.allow_install_without_preload = 'on';",
							 config_file)));
		}
		else
		{
			FUNC2(FATAL,
					(FUNC4("extension \"%s\" must be preloaded", EXTENSION_NAME),
					 FUNC3(
						 "Please preload the timescaledb library via shared_preload_libraries.\n\n"
						 "This can be done by editing the postgres config file \n"
						 "and adding 'timescaledb' to the list in the shared_preload_libraries "
						 "config.\n"
						 "	# Modify postgresql.conf:\n	shared_preload_libraries = "
						 "'timescaledb'\n\n"
						 "Another way to do this, if not preloading other libraries, is with the "
						 "command:\n"
						 "	echo \"shared_preload_libraries = 'timescaledb'\" >> "
						 "/path/to/config/file \n\n"
						 "(Will require a database restart.)\n\n"
						 "If you REALLY know what you are doing and would like to load the library "
						 "without preloading, you can disable this check with: \n"
						 "	SET timescaledb.allow_install_without_preload = 'on';")));
		}

		return;
	}
}