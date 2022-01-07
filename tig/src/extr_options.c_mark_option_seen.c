
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option_info {int seen; } ;


 struct option_info* find_option_info_by_value (void*) ;

__attribute__((used)) static void
mark_option_seen(void *value)
{
 struct option_info *option = find_option_info_by_value(value);

 if (option)
  option->seen = 1;
}
