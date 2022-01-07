
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct environ_entry {char* value; } ;


 int strlen (char const*) ;
 char* xmalloc (int) ;

__attribute__((used)) static char *
cmd_show_environment_escape(struct environ_entry *envent)
{
 const char *value = envent->value;
 char c, *out, *ret;

 out = ret = xmalloc(strlen(value) * 2 + 1);
 while ((c = *value++) != '\0') {

  if (c == '$' || c == '`' || c == '"' || c == '\\')
   *out++ = '\\';
  *out++ = c;
 }
 *out = '\0';

 return (ret);
}
