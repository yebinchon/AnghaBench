
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ft_error {char const* str; int err; } ;


 struct ft_error* ft_errors ;

const char *ft_error_string(int err)
{
 const struct ft_error *e;

 for (e = ft_errors; e->str; e++)
  if (e->err == err)
   return e->str;

 return "Unknown error";
}
