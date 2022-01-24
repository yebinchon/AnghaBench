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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*,char***) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int ruby_initialized ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int,char**) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  ruby_stack_start ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static int FUNC11(void)
{
    if (!ruby_initialized)
    {
#ifdef DYNAMIC_RUBY
	if (ruby_enabled(TRUE))
	{
#endif
#ifdef _WIN32
	    /* suggested by Ariya Mizutani */
	    int argc = 1;
	    char *argv[] = {"gvim.exe"};
	    NtInitialize(&argc, &argv);
#endif
	    {
#if defined(RUBY19_OR_LATER) || defined(RUBY_INIT_STACK)
		ruby_init_stack(ruby_stack_start);
#endif
		FUNC4();
	    }
#ifdef RUBY19_OR_LATER
	    {
		int dummy_argc = 2;
		char *dummy_argv[] = {"vim-ruby", "-e0"};
		ruby_process_options(dummy_argc, dummy_argv);
	    }
	    ruby_script("vim-ruby");
#else
	    FUNC5();
#endif
	    FUNC7();
	    FUNC10();
	    ruby_initialized = 1;
#ifdef DYNAMIC_RUBY
	}
	else
	{
	    EMSG(_("E266: Sorry, this command is disabled, the Ruby library could not be loaded."));
	    return 0;
	}
#endif
    }
    return ruby_initialized;
}