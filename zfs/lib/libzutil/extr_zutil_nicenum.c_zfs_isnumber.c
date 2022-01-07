
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 scalar_t__ isdigit (char const) ;

boolean_t
zfs_isnumber(const char *str)
{
 for (; *str; str++)
  if (!(isdigit(*str) || (*str == '.')))
   return (B_FALSE);

 return (B_TRUE);
}
