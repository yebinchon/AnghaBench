
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;
 int EINVAL ;
 int strlen (char const*) ;

__attribute__((used)) static int
parse_dvas(const char *str, uint32_t *dvas_out)
{
 const char *c = str;
 uint32_t mask = 0;
 boolean_t need_delim = B_FALSE;


 if (strlen(str) > 5 || strlen(str) == 0)
  return (EINVAL);

 while (*c != '\0') {
  switch (*c) {
  case '0':
  case '1':
  case '2':

   if (need_delim)
    return (EINVAL);


   if (mask & (1 << ((*c) - '0')))
    return (EINVAL);

   mask |= (1 << ((*c) - '0'));
   need_delim = B_TRUE;
   break;
  case ',':
   need_delim = B_FALSE;
   break;
  default:

   return (EINVAL);
  }
  c++;
 }


 if (!need_delim)
  return (EINVAL);

 *dvas_out = mask;
 return (0);
}
