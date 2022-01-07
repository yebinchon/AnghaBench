
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int S_IRGRP ;
 int S_IROTH ;
 int S_IRUSR ;
 int S_IWGRP ;
 int S_IWOTH ;
 int S_IWUSR ;
 int _O_BINARY ;
 int _S_IREAD ;
 int _S_IWRITE ;
 int _open (char const*,int,int) ;
 int _wopen (int *,int,int) ;
 int free (int *) ;
 int open (char const*,int,int) ;
 int * u2wlongpath (char const*) ;

int compat_open(const char *filename, int flags)
{
 int ret;
 ret = open(filename, flags, S_IRUSR|S_IWUSR|S_IRGRP|S_IWGRP|S_IROTH|S_IWOTH);







 return ret;
}
