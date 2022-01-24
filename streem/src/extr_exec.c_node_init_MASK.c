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
typedef  int /*<<< orphan*/  strm_state ;

/* Variables and functions */
 int /*<<< orphan*/  STRM_IO_READ ; 
 int /*<<< orphan*/  STRM_IO_WRITE ; 
 int /*<<< orphan*/  exec_bar ; 
 int /*<<< orphan*/  exec_eq ; 
 int /*<<< orphan*/  exec_exit ; 
 int /*<<< orphan*/  exec_fread ; 
 int /*<<< orphan*/  exec_fwrite ; 
 int /*<<< orphan*/  exec_match ; 
 int /*<<< orphan*/  exec_neq ; 
 int /*<<< orphan*/  exec_puts ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(strm_state* state)
{
  FUNC1(state);

  FUNC3(state, "stdin", FUNC2(0, STRM_IO_READ));
  FUNC3(state, "stdout", FUNC2(1, STRM_IO_WRITE));
  FUNC3(state, "stderr", FUNC2(2, STRM_IO_WRITE));
  FUNC3(state, "puts", FUNC0(exec_puts));
  FUNC3(state, "print", FUNC0(exec_puts));
  FUNC3(state, "==", FUNC0(exec_eq));
  FUNC3(state, "!=", FUNC0(exec_neq));
  FUNC3(state, "|", FUNC0(exec_bar));
  FUNC3(state, "fread", FUNC0(exec_fread));
  FUNC3(state, "fwrite", FUNC0(exec_fwrite));
  FUNC3(state, "exit", FUNC0(exec_exit));
  FUNC3(state, "match", FUNC0(exec_match));
}