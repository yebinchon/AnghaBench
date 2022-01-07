
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; int buffer; } ;
typedef TYPE_1__ fz_font ;
typedef int fz_context ;


 int fz_buffer_storage (int *,int ,unsigned char**) ;
 unsigned char* fz_lookup_base14_font (int *,int ,int*) ;
 int pdf_clean_font_name (int ) ;

__attribute__((used)) static int is_builtin_font(fz_context *ctx, fz_font *font)
{
 int size;
 unsigned char *data;
 if (!font->buffer)
  return 0;
 fz_buffer_storage(ctx, font->buffer, &data);
 return fz_lookup_base14_font(ctx, pdf_clean_font_name(font->name), &size) == data;
}
