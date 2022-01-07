
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key {int dummy; } ;
struct input {int dummy; } ;
typedef enum input_status { ____Placeholder_input_status } input_status ;


 int INPUT_OK ;
 int INPUT_STOP ;


 int key_to_value (struct key*) ;

__attribute__((used)) static enum input_status
prompt_script_handler(struct input *input, struct key *key)
{
 switch (key_to_value(key)) {
 case 128:
 case 129:
 case '\n':
  return INPUT_STOP;

 default:
  return INPUT_OK;
 }
}
