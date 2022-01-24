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
 int /*<<< orphan*/  command_generator ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  interpreter ; 
 int readline_active ; 
 scalar_t__ readline_disabled ; 
 void* rl_basic_word_break_characters ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rl_completion_entry_function ; 
 void* rl_filename_quote_characters ; 
 void* FUNC2 (char*) ; 

void FUNC3 (void) {
  if (readline_disabled) { return; }
  readline_active = 1;
  rl_filename_quote_characters = FUNC2 (" ");
  rl_basic_word_break_characters = FUNC2 (" ");
  
  
  FUNC1 (FUNC0 (), interpreter);
  rl_completion_entry_function = command_generator;
}