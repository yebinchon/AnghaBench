
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct callbacks {int * arg; int on_line; int on_char; } ;
typedef int fz_stext_page ;
typedef int fz_point ;
typedef int fz_context ;
typedef int fz_buffer ;


 int fz_buffer_extract (int *,int *,unsigned char**) ;
 int fz_drop_buffer (int *,int *) ;
 int fz_enumerate_selection (int *,int *,int ,int ,struct callbacks*) ;
 int * fz_new_buffer (int *,int) ;
 int fz_terminate_buffer (int *,int *) ;
 int on_copy_char ;
 int on_copy_line_crlf ;
 int on_copy_line_lf ;

char *
fz_copy_selection(fz_context *ctx, fz_stext_page *page, fz_point a, fz_point b, int crlf)
{
 struct callbacks cb;
 fz_buffer *buffer;
 unsigned char *s;

 buffer = fz_new_buffer(ctx, 1024);

 cb.on_char = on_copy_char;
 cb.on_line = crlf ? on_copy_line_crlf : on_copy_line_lf;
 cb.arg = buffer;

 fz_enumerate_selection(ctx, page, a, b, &cb);

 fz_terminate_buffer(ctx, buffer);
 fz_buffer_extract(ctx, buffer, &s);
 fz_drop_buffer(ctx, buffer);
 return (char*)s;
}
