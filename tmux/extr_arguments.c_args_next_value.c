
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct args_value {char const* value; } ;


 struct args_value* TAILQ_NEXT (struct args_value*,int ) ;
 int entry ;

const char *
args_next_value(struct args_value **value)
{
 if (*value == ((void*)0))
  return (((void*)0));
 *value = TAILQ_NEXT(*value, entry);
 if (*value == ((void*)0))
  return (((void*)0));
 return ((*value)->value);
}
