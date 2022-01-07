
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sig; int offset; int size; } ;
typedef TYPE_1__ fz_icc_tag ;
typedef int fz_context ;
typedef int fz_buffer ;


 int fz_append_int32_be (int *,int *,int) ;

__attribute__((used)) static void
copy_tagtable(fz_context *ctx, fz_buffer *buf, fz_icc_tag *tag_list, int num_tags)
{
 int k;

 fz_append_int32_be(ctx, buf, num_tags);
 for (k = 0; k < num_tags; k++)
 {
  fz_append_int32_be(ctx, buf, tag_list[k].sig);
  fz_append_int32_be(ctx, buf, tag_list[k].offset);
  fz_append_int32_be(ctx, buf, tag_list[k].size);
 }
}
