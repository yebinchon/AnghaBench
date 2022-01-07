
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct buf {int size; scalar_t__ data; } ;
typedef int VALUE ;


 int Check_Type (int ,int ) ;
 int RSTRING_LEN (int ) ;
 scalar_t__ RSTRING_PTR (int ) ;
 int T_STRING ;
 struct buf* bufnew (int) ;
 int bufrelease (struct buf*) ;
 int rb_enc_get (int ) ;
 int rb_enc_str_new (char const*,int ,int ) ;
 int sdhtml_smartypants (struct buf*,int const*,int ) ;

__attribute__((used)) static VALUE rb_redcarpet_smartypants_render(VALUE self, VALUE text)
{
 VALUE result;
 struct buf *output_buf;

 Check_Type(text, T_STRING);

 output_buf = bufnew(128);

 sdhtml_smartypants(output_buf, (const uint8_t*)RSTRING_PTR(text), RSTRING_LEN(text));
 result = rb_enc_str_new((const char*)output_buf->data, output_buf->size, rb_enc_get(text));

 bufrelease(output_buf);
 return result;
}
