
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int * fdopen (int,char const*) ;

FILE* compat_fdopen(int fd, const char *mode)
{
 return fdopen(fd, mode);
}
