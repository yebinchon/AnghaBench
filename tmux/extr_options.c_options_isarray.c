
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct options_entry {int dummy; } ;


 int OPTIONS_IS_ARRAY (struct options_entry*) ;

int
options_isarray(struct options_entry *o)
{
 return (OPTIONS_IS_ARRAY(o));
}
