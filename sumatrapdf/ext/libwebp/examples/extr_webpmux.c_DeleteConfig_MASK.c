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
struct TYPE_4__ {int /*<<< orphan*/  cmd_args_; int /*<<< orphan*/  args_; } ;
typedef  TYPE_1__ Config ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__* const,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(Config* const config) {
  if (config != NULL) {
    FUNC1(config->args_);
    FUNC0(&config->cmd_args_);
    FUNC2(config, 0, sizeof(*config));
  }
}