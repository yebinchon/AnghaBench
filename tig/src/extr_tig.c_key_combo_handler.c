
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_combo {scalar_t__ request; scalar_t__ keys; struct key* key; int keymap; scalar_t__ bufpos; } ;
struct key {int dummy; } ;
struct input {int buf; struct key_combo* data; } ;
typedef enum input_status { ____Placeholder_input_status } input_status ;


 int INPUT_CANCEL ;
 int INPUT_OK ;
 int INPUT_STOP ;
 scalar_t__ KEY_ESC ;
 scalar_t__ KEY_MOUSE ;
 scalar_t__ REQ_UNKNOWN ;
 int get_key_name (struct key*,int,int) ;
 scalar_t__ get_keybinding (int ,struct key*,scalar_t__,int*) ;
 scalar_t__ handle_mouse_event () ;
 scalar_t__ key_to_value (struct key*) ;
 int string_format_from (int ,scalar_t__*,char*,char*,int ) ;

__attribute__((used)) static enum input_status
key_combo_handler(struct input *input, struct key *key)
{
 struct key_combo *combo = input->data;
 int matches = 0;
 if (combo->keys && key_to_value(key) == KEY_ESC)
  return INPUT_CANCEL;

 string_format_from(input->buf, &combo->bufpos, "%s%s",
      combo->bufpos ? " " : "Keys: ", get_key_name(key, 1, 0));
 combo->key[combo->keys++] = *key;
 combo->request = get_keybinding(combo->keymap, combo->key, combo->keys, &matches);

 if (combo->request == REQ_UNKNOWN)
  return matches > 0 ? INPUT_OK : INPUT_STOP;
 return INPUT_STOP;
}
