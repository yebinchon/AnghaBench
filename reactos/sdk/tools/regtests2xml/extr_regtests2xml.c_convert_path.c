
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strdup (char*) ;

__attribute__((used)) static char*
convert_path(char* origpath)
{
   char* newpath;
   int i;

   newpath = strdup(origpath);

   i = 0;
   while (newpath[i] != 0)
     {

 if (newpath[i] == '\\')
   {
      newpath[i] = '/';
   }
 i++;
     }
   return(newpath);
}
