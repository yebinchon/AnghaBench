
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int feof (int *) ;

__attribute__((used)) static int stdio_eof(void *user)
{
   return feof((FILE*) user);
}
