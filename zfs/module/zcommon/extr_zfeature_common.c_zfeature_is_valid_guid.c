
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 int valid_char (char,int ) ;

boolean_t
zfeature_is_valid_guid(const char *name)
{
 int i;
 boolean_t has_colon = B_FALSE;

 i = 0;
 while (name[i] != '\0') {
  char c = name[i++];
  if (c == ':') {
   if (has_colon)
    return (B_FALSE);
   has_colon = B_TRUE;
   continue;
  }
  if (!valid_char(c, has_colon))
   return (B_FALSE);
 }

 return (has_colon);
}
