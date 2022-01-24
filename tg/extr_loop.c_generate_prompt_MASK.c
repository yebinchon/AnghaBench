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
typedef  enum tgl_value_type { ____Placeholder_tgl_value_type } tgl_value_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int one_string_flags ; 
 int /*<<< orphan*/  one_string_prompt ; 
#define  tgl_bot_hash 134 
#define  tgl_code 133 
#define  tgl_cur_and_new_password 132 
#define  tgl_cur_password 131 
#define  tgl_new_password 130 
#define  tgl_phone_number 129 
#define  tgl_register_info 128 
 int /*<<< orphan*/  FUNC1 (char*) ; 

void FUNC2 (enum tgl_value_type type, int num) {
  switch (type) {
  case tgl_phone_number:
    FUNC0 (!num);
    one_string_prompt = FUNC1 ("phone number: ");
    one_string_flags = 0;
    return;
  case tgl_code:
    FUNC0 (!num);
    one_string_prompt = FUNC1 ("code ('CALL' for phone code): ");
    one_string_flags = 0;
    return;
  case tgl_register_info:
    one_string_flags = 0;
    switch (num) {
    case 0:
      one_string_prompt = FUNC1 ("register (Y/n): ");
      return;
    case 1:
      one_string_prompt = FUNC1 ("first name: ");
      return;
    case 2:
      one_string_prompt = FUNC1 ("last name: ");
      return;
    default:
      FUNC0 (0);
    }
    return;
  case tgl_new_password:
    one_string_flags = 1;
    switch (num) {
    case 0:
      one_string_prompt = FUNC1 ("new password: ");
      return;
    case 1:
      one_string_prompt = FUNC1 ("retype new password: ");
      return;
    default:
      FUNC0 (0);
    }
    return;
  case tgl_cur_and_new_password:
    one_string_flags = 1;
    switch (num) {
    case 0:
      one_string_prompt = FUNC1 ("old password: ");
      return;
    case 1:
      one_string_prompt = FUNC1 ("new password: ");
      return;
    case 2:
      one_string_prompt = FUNC1 ("retype new password: ");
      return;
    default:
      FUNC0 (0);
    }
    return;
  case tgl_cur_password:
    one_string_flags = 1;
    FUNC0 (!num);
    one_string_prompt = FUNC1 ("password: ");
    return;
  case tgl_bot_hash:
    one_string_flags = 0;
    FUNC0 (!num);
    one_string_prompt = FUNC1 ("hash: ");
    return;
  default:
    FUNC0 (0);
  }
}