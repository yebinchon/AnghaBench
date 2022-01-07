
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key {int dummy; } ;
struct input {int * buf; int allow_empty; } ;
typedef enum input_status { ____Placeholder_input_status } input_status ;


 int INPUT_CANCEL ;
 int INPUT_DELETE ;
 int INPUT_SKIP ;
 int INPUT_STOP ;




 int key_to_value (struct key*) ;

enum input_status
prompt_default_handler(struct input *input, struct key *key)
{
 switch (key_to_value(key)) {
 case 128:
 case 130:
 case '\n':
  return *input->buf || input->allow_empty ? INPUT_STOP : INPUT_CANCEL;

 case 131:
  return *input->buf ? INPUT_DELETE : INPUT_CANCEL;

 case 129:
  return INPUT_CANCEL;

 default:
  return INPUT_SKIP;
 }
}
