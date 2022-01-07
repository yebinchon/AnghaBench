
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option_info {void* value; } ;


 int ARRAY_SIZE (struct option_info*) ;
 struct option_info* option_info ;

__attribute__((used)) static struct option_info *
find_option_info_by_value(void *value)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(option_info); i++)
  if (option_info[i].value == value)
   return &option_info[i];

 return ((void*)0);
}
