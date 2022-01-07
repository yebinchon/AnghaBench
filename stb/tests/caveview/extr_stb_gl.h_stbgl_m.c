
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int stbgl_m(char *a, char *b)
{

   do { ++a,++b; } while (*b && *a == *b);
   return *b == 0;
}
