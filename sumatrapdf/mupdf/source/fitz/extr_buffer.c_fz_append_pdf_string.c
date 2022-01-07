
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int fz_context ;
struct TYPE_4__ {size_t cap; size_t len; scalar_t__ data; } ;
typedef TYPE_1__ fz_buffer ;


 int fz_grow_buffer (int *,TYPE_1__*) ;

void
fz_append_pdf_string(fz_context *ctx, fz_buffer *buffer, const char *text)
{
 size_t len = 2;
 const char *s = text;
 char *d;
 char c;

 while ((c = *s++) != 0)
 {
  switch (c)
  {
  case '\n':
  case '\r':
  case '\t':
  case '\b':
  case '\f':
  case '(':
  case ')':
  case '\\':
   len++;
   break;
  }
  len++;
 }

 while(buffer->cap - buffer->len < len)
  fz_grow_buffer(ctx, buffer);

 s = text;
 d = (char *)buffer->data + buffer->len;
 *d++ = '(';
 while ((c = *s++) != 0)
 {
  switch (c)
  {
  case '\n':
   *d++ = '\\';
   *d++ = 'n';
   break;
  case '\r':
   *d++ = '\\';
   *d++ = 'r';
   break;
  case '\t':
   *d++ = '\\';
   *d++ = 't';
   break;
  case '\b':
   *d++ = '\\';
   *d++ = 'b';
   break;
  case '\f':
   *d++ = '\\';
   *d++ = 'f';
   break;
  case '(':
   *d++ = '\\';
   *d++ = '(';
   break;
  case ')':
   *d++ = '\\';
   *d++ = ')';
   break;
  case '\\':
   *d++ = '\\';
   *d++ = '\\';
   break;
  default:
   *d++ = c;
  }
 }
 *d = ')';
 buffer->len += len;
}
