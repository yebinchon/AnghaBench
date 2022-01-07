
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char*
path_to_url(char* path)
{
   int i;

   i = 0;
   while (path[i] != 0)
     {
 if (path[i] == '\\')
   {
      path[i] = '/';
   }
 i++;
     }
   return(path);
}
