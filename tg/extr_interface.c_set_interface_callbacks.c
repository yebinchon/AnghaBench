
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int command_generator ;
 int get_default_prompt () ;
 int interpreter ;
 int readline_active ;
 scalar_t__ readline_disabled ;
 void* rl_basic_word_break_characters ;
 int rl_callback_handler_install (int ,int ) ;
 int rl_completion_entry_function ;
 void* rl_filename_quote_characters ;
 void* strdup (char*) ;

void set_interface_callbacks (void) {
  if (readline_disabled) { return; }
  readline_active = 1;
  rl_filename_quote_characters = strdup (" ");
  rl_basic_word_break_characters = strdup (" ");


  rl_callback_handler_install (get_default_prompt (), interpreter);
  rl_completion_entry_function = command_generator;
}
