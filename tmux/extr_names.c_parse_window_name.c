
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 char* basename (char*) ;
 int free (char*) ;
 int isalnum (int ) ;
 int ispunct (int ) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 char* xstrdup (char const*) ;

char *
parse_window_name(const char *in)
{
 char *copy, *name, *ptr;

 name = copy = xstrdup(in);
 if (strncmp(name, "exec ", (sizeof "exec ") - 1) == 0)
  name = name + (sizeof "exec ") - 1;

 while (*name == ' ' || *name == '-')
  name++;
 if ((ptr = strchr(name, ' ')) != ((void*)0))
  *ptr = '\0';

 if (*name != '\0') {
  ptr = name + strlen(name) - 1;
  while (ptr > name &&
      !isalnum((u_char)*ptr) &&
      !ispunct((u_char)*ptr))
   *ptr-- = '\0';
 }

 if (*name == '/')
  name = basename(name);
 name = xstrdup(name);
 free(copy);
 return (name);
}
