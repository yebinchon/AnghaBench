
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strdup (char const*) ;

char*
convert_path ( const char* origpath )
{
 char* newpath;
 int i;

 newpath = strdup(origpath);

 i = 0;
 while (newpath[i] != 0)
 {
  i++;
 }
 return(newpath);
}
