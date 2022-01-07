
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lexbuf {int string_len; int* string; } ;


 int fz_css_error (struct lexbuf*,char*) ;
 scalar_t__ nelem (int*) ;

__attribute__((used)) static void css_push_char(struct lexbuf *buf, int c)
{
 if (buf->string_len + 1 >= (int)nelem(buf->string))
  fz_css_error(buf, "token too long");
 buf->string[buf->string_len++] = c;
}
