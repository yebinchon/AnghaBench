
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int path_to_url (char*) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static void
get_filename(char *cvspath, char *filename, char *result)
{
  strcpy(result, cvspath);
  strcat(result, filename);
  path_to_url(result);
}
