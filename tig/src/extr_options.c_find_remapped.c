
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int string_enum_compare (char const*,char const*,size_t) ;
 size_t strlen (char const*) ;

__attribute__((used)) static int
find_remapped(const char *remapped[][2], size_t remapped_size, const char *arg)
{
 size_t arglen = strlen(arg);
 int i;

 for (i = 0; i < remapped_size; i++) {
  const char *name = remapped[i][0];
  size_t namelen = strlen(name);

  if (arglen == namelen &&
      !string_enum_compare(arg, name, namelen))
   return i;
 }

 return -1;
}
