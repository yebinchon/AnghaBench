
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_stext_line ;
typedef int fz_context ;
typedef int fz_buffer ;


 int fz_append_byte (int *,int *,char) ;

__attribute__((used)) static void on_copy_line_crlf(fz_context *ctx, void *arg, fz_stext_line *line)
{
 fz_buffer *buffer = arg;
 fz_append_byte(ctx, buffer, '\r');
 fz_append_byte(ctx, buffer, '\n');
}
