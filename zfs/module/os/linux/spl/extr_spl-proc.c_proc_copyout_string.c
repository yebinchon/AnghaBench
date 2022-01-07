
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EFAULT ;
 int MIN (int ,int) ;
 scalar_t__ copy_to_user (char*,char const*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static int
proc_copyout_string(char *ubuffer, int ubuffer_size, const char *kbuffer,
    char *append)
{





 int size = MIN(strlen(kbuffer), ubuffer_size);

 if (copy_to_user(ubuffer, kbuffer, size))
  return (-EFAULT);

 if (append != ((void*)0) && size < ubuffer_size) {
  if (copy_to_user(ubuffer + size, append, 1))
   return (-EFAULT);

  size++;
 }

 return (size);
}
