
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum tgl_value_type { ____Placeholder_tgl_value_type } tgl_value_type ;


 int assert (int) ;
 int one_string_flags ;
 int one_string_prompt ;







 int tstrdup (char*) ;

void generate_prompt (enum tgl_value_type type, int num) {
  switch (type) {
  case 129:
    assert (!num);
    one_string_prompt = tstrdup ("phone number: ");
    one_string_flags = 0;
    return;
  case 133:
    assert (!num);
    one_string_prompt = tstrdup ("code ('CALL' for phone code): ");
    one_string_flags = 0;
    return;
  case 128:
    one_string_flags = 0;
    switch (num) {
    case 0:
      one_string_prompt = tstrdup ("register (Y/n): ");
      return;
    case 1:
      one_string_prompt = tstrdup ("first name: ");
      return;
    case 2:
      one_string_prompt = tstrdup ("last name: ");
      return;
    default:
      assert (0);
    }
    return;
  case 130:
    one_string_flags = 1;
    switch (num) {
    case 0:
      one_string_prompt = tstrdup ("new password: ");
      return;
    case 1:
      one_string_prompt = tstrdup ("retype new password: ");
      return;
    default:
      assert (0);
    }
    return;
  case 132:
    one_string_flags = 1;
    switch (num) {
    case 0:
      one_string_prompt = tstrdup ("old password: ");
      return;
    case 1:
      one_string_prompt = tstrdup ("new password: ");
      return;
    case 2:
      one_string_prompt = tstrdup ("retype new password: ");
      return;
    default:
      assert (0);
    }
    return;
  case 131:
    one_string_flags = 1;
    assert (!num);
    one_string_prompt = tstrdup ("password: ");
    return;
  case 134:
    one_string_flags = 0;
    assert (!num);
    one_string_prompt = tstrdup ("hash: ");
    return;
  default:
    assert (0);
  }
}
