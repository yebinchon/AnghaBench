
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct environ {int dummy; } ;


 int environ_set (struct environ*,char*,char*,char*) ;
 int free (char*) ;
 char* strchr (char const*,char) ;
 size_t strcspn (char*,char*) ;
 char* xstrdup (char const*) ;

void
environ_put(struct environ *env, const char *var)
{
 char *name, *value;

 value = strchr(var, '=');
 if (value == ((void*)0))
  return;
 value++;

 name = xstrdup(var);
 name[strcspn(name, "=")] = '\0';

 environ_set(env, name, "%s", value);
 free(name);
}
