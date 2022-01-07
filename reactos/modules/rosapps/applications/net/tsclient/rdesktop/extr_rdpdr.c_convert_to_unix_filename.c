
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char*,char) ;

void
convert_to_unix_filename(char *filename)
{
 char *p;

 while ((p = strchr(filename, '\\')))
 {
  *p = '/';
 }
}
