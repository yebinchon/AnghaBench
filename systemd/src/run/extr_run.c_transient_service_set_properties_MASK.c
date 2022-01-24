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
typedef  int /*<<< orphan*/  sd_bus_message ;

/* Variables and functions */
 scalar_t__ ARG_STDIO_DIRECT ; 
 scalar_t__ ARG_STDIO_NONE ; 
 int /*<<< orphan*/  STDERR_FILENO ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  UNIT_SERVICE ; 
 int* arg_cmdline ; 
 int* arg_environment ; 
 int arg_exec_group ; 
 int arg_exec_user ; 
 int /*<<< orphan*/  arg_nice ; 
 scalar_t__ arg_nice_set ; 
 int /*<<< orphan*/  arg_property ; 
 int arg_remain_after_exit ; 
 int arg_service_type ; 
 scalar_t__ arg_stdio ; 
 scalar_t__ arg_wait ; 
 int arg_working_directory ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int) ; 
 char* FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC5 (int /*<<< orphan*/ *,int*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,char,char*) ; 
 char* FUNC8 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (int*) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(sd_bus_message *m, const char *pty_path) {
        bool send_term = false;
        int r;

        FUNC0(m);

        r = FUNC12(m, UNIT_SERVICE, arg_property);
        if (r < 0)
                return r;

        r = FUNC11(m);
        if (r < 0)
                return r;

        r = FUNC10(m);
        if (r < 0)
                return r;

        if (arg_wait || arg_stdio != ARG_STDIO_NONE) {
                r = FUNC4(m, "(sv)", "AddRef", "b", 1);
                if (r < 0)
                        return FUNC1(r);
        }

        if (arg_remain_after_exit) {
                r = FUNC4(m, "(sv)", "RemainAfterExit", "b", arg_remain_after_exit);
                if (r < 0)
                        return FUNC1(r);
        }

        if (arg_service_type) {
                r = FUNC4(m, "(sv)", "Type", "s", arg_service_type);
                if (r < 0)
                        return FUNC1(r);
        }

        if (arg_exec_user) {
                r = FUNC4(m, "(sv)", "User", "s", arg_exec_user);
                if (r < 0)
                        return FUNC1(r);
        }

        if (arg_exec_group) {
                r = FUNC4(m, "(sv)", "Group", "s", arg_exec_group);
                if (r < 0)
                        return FUNC1(r);
        }

        if (arg_nice_set) {
                r = FUNC4(m, "(sv)", "Nice", "i", arg_nice);
                if (r < 0)
                        return FUNC1(r);
        }

        if (arg_working_directory) {
                r = FUNC4(m, "(sv)", "WorkingDirectory", "s", arg_working_directory);
                if (r < 0)
                        return FUNC1(r);
        }

        if (pty_path) {
                r = FUNC4(m,
                                          "(sv)(sv)(sv)(sv)",
                                          "StandardInput", "s", "tty",
                                          "StandardOutput", "s", "tty",
                                          "StandardError", "s", "tty",
                                          "TTYPath", "s", pty_path);
                if (r < 0)
                        return FUNC1(r);

                send_term = true;

        } else if (arg_stdio == ARG_STDIO_DIRECT) {
                r = FUNC4(m,
                                          "(sv)(sv)(sv)",
                                          "StandardInputFileDescriptor", "h", STDIN_FILENO,
                                          "StandardOutputFileDescriptor", "h", STDOUT_FILENO,
                                          "StandardErrorFileDescriptor", "h", STDERR_FILENO);
                if (r < 0)
                        return FUNC1(r);

                send_term = FUNC3(STDIN_FILENO) || FUNC3(STDOUT_FILENO) || FUNC3(STDERR_FILENO);
        }

        if (send_term) {
                const char *e;

                e = FUNC2("TERM");
                if (e) {
                        char *n;

                        n = FUNC8("TERM=", e);
                        r = FUNC4(m,
                                                  "(sv)",
                                                  "Environment", "as", 1, n);
                        if (r < 0)
                                return FUNC1(r);
                }
        }

        if (!FUNC9(arg_environment)) {
                r = FUNC7(m, 'r', "sv");
                if (r < 0)
                        return FUNC1(r);

                r = FUNC4(m, "s", "Environment");
                if (r < 0)
                        return FUNC1(r);

                r = FUNC7(m, 'v', "as");
                if (r < 0)
                        return FUNC1(r);

                r = FUNC5(m, arg_environment);
                if (r < 0)
                        return FUNC1(r);

                r = FUNC6(m);
                if (r < 0)
                        return FUNC1(r);

                r = FUNC6(m);
                if (r < 0)
                        return FUNC1(r);
        }

        /* Exec container */
        if (!FUNC9(arg_cmdline)) {
                r = FUNC7(m, 'r', "sv");
                if (r < 0)
                        return FUNC1(r);

                r = FUNC4(m, "s", "ExecStart");
                if (r < 0)
                        return FUNC1(r);

                r = FUNC7(m, 'v', "a(sasb)");
                if (r < 0)
                        return FUNC1(r);

                r = FUNC7(m, 'a', "(sasb)");
                if (r < 0)
                        return FUNC1(r);

                r = FUNC7(m, 'r', "sasb");
                if (r < 0)
                        return FUNC1(r);

                r = FUNC4(m, "s", arg_cmdline[0]);
                if (r < 0)
                        return FUNC1(r);

                r = FUNC5(m, arg_cmdline);
                if (r < 0)
                        return FUNC1(r);

                r = FUNC4(m, "b", false);
                if (r < 0)
                        return FUNC1(r);

                r = FUNC6(m);
                if (r < 0)
                        return FUNC1(r);

                r = FUNC6(m);
                if (r < 0)
                        return FUNC1(r);

                r = FUNC6(m);
                if (r < 0)
                        return FUNC1(r);

                r = FUNC6(m);
                if (r < 0)
                        return FUNC1(r);
        }

        return 0;
}