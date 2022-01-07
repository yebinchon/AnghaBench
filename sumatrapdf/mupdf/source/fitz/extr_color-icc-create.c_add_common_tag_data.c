
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_icc_tag ;
typedef int fz_context ;
typedef int fz_buffer ;


 int add_desc_tag (int *,int *,char const*,int *,int ) ;
 int add_text_tag (int *,int *,int ,int *,int) ;
 int copy_right ;

__attribute__((used)) static void
add_common_tag_data(fz_context *ctx, fz_buffer *buf, fz_icc_tag tag_list[], const char *desc_name)
{
 add_desc_tag(ctx, buf, desc_name, tag_list, 0);
 add_text_tag(ctx, buf, copy_right, tag_list, 1);
}
