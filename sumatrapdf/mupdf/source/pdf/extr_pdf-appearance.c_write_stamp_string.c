
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_font ;
typedef int fz_context ;
typedef int fz_buffer ;


 int strlen (char const*) ;
 int write_simple_string (int *,int *,char const*,char const*) ;

__attribute__((used)) static void
write_stamp_string(fz_context *ctx, fz_buffer *buf, fz_font *font, const char *text)
{
 write_simple_string(ctx, buf, text, text+strlen(text));
}
