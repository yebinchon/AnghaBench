
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int byte_padding; } ;
typedef TYPE_1__ fz_icc_tag ;
typedef int fz_context ;
typedef int fz_buffer ;


 int fz_append_byte (int *,int *,int ) ;
 int fz_append_byte_n (int *,int *,int ,int) ;
 int fz_append_int32_be (int *,int *,int ) ;
 int fz_append_string (int *,int *,char const*) ;
 int icSigTextType ;

__attribute__((used)) static void
add_text_tag(fz_context *ctx, fz_buffer *buf, const char text[], fz_icc_tag tag_list[], int curr_tag)
{
 fz_append_int32_be(ctx, buf, icSigTextType);
 fz_append_byte_n(ctx, buf, 0, 4);
 fz_append_string(ctx, buf, text);
 fz_append_byte(ctx, buf, 0);
 fz_append_byte_n(ctx, buf, 0, tag_list[curr_tag].byte_padding);
}
