#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ bytes; } ;
struct TYPE_5__ {int own_argv_; char const** argv_; int argc_; TYPE_3__ argv_data_; } ;
typedef  TYPE_1__ CommandLineArguments ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,TYPE_3__*) ; 
 int MAX_ARGC ; 
 int /*<<< orphan*/  FUNC1 (int,char const**,TYPE_1__* const) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC5 (char*) ; 
 char* FUNC6 (char*,char const*) ; 

int FUNC7(int argc, const char* argv[],
                                   CommandLineArguments* const args) {
  if (args == NULL || argv == NULL) return 0;
  FUNC1(argc, argv, args);
  if (argc == 1 && argv[0][0] != '-') {
    char* cur;
    const char sep[] = " \t\r\n\f\v";

#if defined(_WIN32) && defined(_UNICODE)
    fprintf(stderr,
            "Error: Reading arguments from a file is a feature unavailable "
            "with Unicode binaries.\n");
    return 0;
#endif

    if (!FUNC0(argv[0], &args->argv_data_)) {
      return 0;
    }
    args->own_argv_ = 1;
    args->argv_ = (const char**)FUNC2(MAX_ARGC * sizeof(*args->argv_));
    if (args->argv_ == NULL) return 0;

    argc = 0;
    for (cur = FUNC6((char*)args->argv_data_.bytes, sep);
         cur != NULL;
         cur = FUNC6(NULL, sep)) {
      if (argc == MAX_ARGC) {
        FUNC4(stderr, "ERROR: Arguments limit %d reached\n", MAX_ARGC);
        return 0;
      }
      FUNC3(FUNC5(cur) != 0);
      args->argv_[argc++] = cur;
    }
    args->argc_ = argc;
  }
  return 1;
}