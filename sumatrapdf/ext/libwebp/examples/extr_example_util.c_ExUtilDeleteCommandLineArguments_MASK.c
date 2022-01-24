#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  argv_data_; scalar_t__ argv_; scalar_t__ own_argv_; } ;
typedef  TYPE_1__ CommandLineArguments ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__* const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 

void FUNC3(CommandLineArguments* const args) {
  if (args != NULL) {
    if (args->own_argv_) {
      FUNC2((void*)args->argv_);
      FUNC1(&args->argv_data_);
    }
    FUNC0(0, NULL, args);
  }
}