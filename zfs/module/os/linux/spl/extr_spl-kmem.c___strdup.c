
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* kmalloc (int,int ) ;
 int kmem_flags_convert (int) ;
 int memcpy (char*,char const*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static char *
__strdup(const char *str, int flags)
{
 char *ptr;
 int n;

 n = strlen(str);
 ptr = kmalloc(n + 1, kmem_flags_convert(flags));
 if (ptr)
  memcpy(ptr, str, n + 1);

 return (ptr);
}
