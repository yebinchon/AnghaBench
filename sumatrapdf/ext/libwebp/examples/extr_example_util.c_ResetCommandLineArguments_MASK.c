#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int argc_; char const** argv_; int /*<<< orphan*/  argv_data_; scalar_t__ own_argv_; } ;
typedef  TYPE_1__ CommandLineArguments ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(int argc, const char* argv[],
                                      CommandLineArguments* const args) {
  FUNC1(args != NULL);
  args->argc_ = argc;
  args->argv_ = argv;
  args->own_argv_ = 0;
  FUNC0(&args->argv_data_);
}