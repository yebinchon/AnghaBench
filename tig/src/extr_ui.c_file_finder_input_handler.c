
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bytes; } ;
struct key {TYPE_1__ data; } ;
struct input {struct file_finder* data; } ;
struct file_finder {size_t searchlen; int ** search; int keymap; } ;
typedef enum input_status { ____Placeholder_input_status } input_status ;


 int INPUT_CANCEL ;
 int INPUT_DELETE ;
 int INPUT_OK ;
 int INPUT_SKIP ;






 int argv_append (int ***,int ) ;
 int file_finder_draw (struct file_finder*) ;
 int file_finder_move (struct file_finder*,int) ;
 int file_finder_update (struct file_finder*) ;
 int free (void*) ;
 int get_keybinding (int ,struct key*,int,int *) ;
 int key_to_value (struct key*) ;
 int prompt_default_handler (struct input*,struct key*) ;

__attribute__((used)) static enum input_status
file_finder_input_handler(struct input *input, struct key *key)
{
 struct file_finder *finder = input->data;
 enum input_status status;

 status = prompt_default_handler(input, key);
 if (status == INPUT_DELETE) {
  if (finder->searchlen > 0) {
   finder->searchlen--;
   free((void *) finder->search[finder->searchlen]);
   finder->search[finder->searchlen] = ((void*)0);
  }
  file_finder_update(finder);
  file_finder_move(finder, 0);
  file_finder_draw(finder);
  return status;
 }

 if (status != INPUT_SKIP)
  return status;

 switch (get_keybinding(finder->keymap, key, 1, ((void*)0))) {
 case 131:
  file_finder_move(finder, -1);
  file_finder_draw(finder);
  return INPUT_SKIP;

 case 132:
  file_finder_move(finder, +1);
  file_finder_draw(finder);
  return INPUT_SKIP;

 case 133:
 case 130:
 case 129:
 case 128:
  return INPUT_CANCEL;

 default:
  if (key_to_value(key) == 0) {
   argv_append(&finder->search, key->data.bytes);
   finder->searchlen++;
   file_finder_update(finder);
   file_finder_move(finder, 0);
   file_finder_draw(finder);
   return INPUT_OK;
  }


  return INPUT_SKIP;
 }
}
