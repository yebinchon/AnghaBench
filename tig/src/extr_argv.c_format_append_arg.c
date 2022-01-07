
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct format_context {int buf; scalar_t__ bufpos; } ;


 int argv_append (char const***,int ) ;
 int format_expand_arg (struct format_context*,char const*,char const*) ;
 int memset (int ,int ,int) ;
 char* strchr (char const*,char) ;
 int string_format_from (int ,scalar_t__*,char*,int const,char const*) ;
 int strlen (char const*) ;
 char* strstr (char const*,char*) ;

__attribute__((used)) static bool
format_append_arg(struct format_context *format, const char ***dst_argv, const char *arg)
{
 memset(format->buf, 0, sizeof(format->buf));
 format->bufpos = 0;

 while (arg) {
  const char *var = strstr(arg, "%(");
  const char *closing = var ? strchr(var, ')') : ((void*)0);
  const char *next = closing ? closing + 1 : ((void*)0);
  const int len = var ? var - arg : strlen(arg);

  if (var && !closing)
   return 0;

  if (len && !string_format_from(format->buf, &format->bufpos, "%.*s", len, arg))
   return 0;

  if (var && !format_expand_arg(format, var, next))
   return 0;

  arg = next;
 }

 return argv_append(dst_argv, format->buf);
}
