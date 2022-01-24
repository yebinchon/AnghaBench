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
typedef  int /*<<< orphan*/  sd_journal ;

/* Variables and functions */
 int SD_JOURNAL_LOCAL_ONLY ; 
 char* arg_directory ; 
 scalar_t__ arg_file ; 
 scalar_t__ arg_journal_type ; 
 scalar_t__ arg_machine ; 
 int /*<<< orphan*/  arg_merge ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ **,scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ **,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ **,char*,scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ **,char const**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(sd_journal **j) {
        int r;

        if (arg_directory)
                r = FUNC3(j, arg_directory, arg_journal_type);
        else if (arg_file)
                r = FUNC4(j, (const char**) arg_file, 0);
        else if (arg_machine)
                r = FUNC2(j, arg_machine, 0);
        else
                r = FUNC1(j, !arg_merge*SD_JOURNAL_LOCAL_ONLY + arg_journal_type);
        if (r < 0)
                FUNC0(r, "Failed to open %s: %m",
                                arg_directory ? arg_directory : arg_file ? "files" : "journal");
        return r;
}