
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_t ;


 int UU_ERROR_INVALID_ARGUMENT ;
 int UU_ERROR_UNKNOWN_FLAG ;
 int UU_NAME_DOMAIN ;
 int UU_NAME_PATH ;
 int is_valid_component (char const*,char const*,int) ;
 char* strchr (char const*,char) ;
 int strlen (char const*) ;
 int uu_set_error (int ) ;

int
uu_check_name(const char *name, uint_t flags)
{
 const char *end = name + strlen(name);
 const char *p;

 if (flags & ~(UU_NAME_DOMAIN | UU_NAME_PATH)) {
  uu_set_error(UU_ERROR_UNKNOWN_FLAG);
  return (-1);
 }

 if (!(flags & UU_NAME_PATH)) {
  if (!is_valid_component(name, end, flags))
   goto bad;
  return (0);
 }

 while ((p = strchr(name, '/')) != ((void*)0)) {
  if (!is_valid_component(name, p - 1, flags))
   goto bad;
  name = p + 1;
 }
 if (!is_valid_component(name, end, flags))
  goto bad;

 return (0);

bad:
 uu_set_error(UU_ERROR_INVALID_ARGUMENT);
 return (-1);
}
