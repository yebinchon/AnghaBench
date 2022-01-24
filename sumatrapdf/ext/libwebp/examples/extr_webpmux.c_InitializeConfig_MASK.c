#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  W_CHAR ;
struct TYPE_6__ {int arg_count_; int /*<<< orphan*/ * args_; int /*<<< orphan*/  cmd_args_; } ;
typedef  int /*<<< orphan*/  FeatureArg ;
typedef  TYPE_1__ Config ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Err1 ; 
 int FUNC1 (int,char const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__* const,int /*<<< orphan*/  const** const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__* const) ; 
 scalar_t__ FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__* const,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(int argc, const char* argv[], Config* const config,
                            const W_CHAR** const unicode_argv) {
  int num_feature_args = 0;
  int ok;

  FUNC6(config, 0, sizeof(*config));

  ok = FUNC1(argc, argv, &config->cmd_args_);
  if (!ok) return 0;

  // Validate command-line arguments.
  if (!FUNC3(&config->cmd_args_, &num_feature_args)) {
    FUNC0("Exiting due to command-line parsing error.\n", Err1);
  }

  config->arg_count_ = num_feature_args;
  config->args_ = (FeatureArg*)FUNC5(num_feature_args, sizeof(*config->args_));
  if (config->args_ == NULL) {
    FUNC0("ERROR: Memory allocation error.\n", Err1);
  }

  // Parse command-line.
  if (!FUNC2(config, unicode_argv) || !FUNC4(config)) {
    FUNC0("Exiting due to command-line parsing error.\n", Err1);
  }

 Err1:
  return ok;
}