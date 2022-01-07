
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int multibytes; } ;
struct key {TYPE_1__ modifiers; } ;
struct input {int dummy; } ;
struct incremental_input {int (* handler ) (struct input*,struct key*) ;scalar_t__ edit_mode; } ;
typedef enum input_status { ____Placeholder_input_status } input_status ;


 int INPUT_OK ;
 int INPUT_SKIP ;
 int key_to_unicode (struct key*) ;
 int prompt_default_handler (struct input*,struct key*) ;
 int stub1 (struct input*,struct key*) ;
 int unicode_width (int ,int) ;

__attribute__((used)) static enum input_status
read_prompt_handler(struct input *input, struct key *key)
{
 struct incremental_input *incremental = (struct incremental_input *) input;

 if (incremental->edit_mode && !key->modifiers.multibytes)
  return prompt_default_handler(input, key);

 if (!unicode_width(key_to_unicode(key), 8))
  return INPUT_SKIP;

 if (!incremental->handler)
  return INPUT_OK;

 return incremental->handler(input, key);
}
