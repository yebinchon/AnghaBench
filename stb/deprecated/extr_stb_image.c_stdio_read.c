
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 scalar_t__ fread (char*,int,int,int *) ;

__attribute__((used)) static int stdio_read(void *user, char *data, int size)
{
   return (int) fread(data,1,size,(FILE*) user);
}
