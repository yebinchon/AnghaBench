
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int icTagSignature ;
struct TYPE_3__ {scalar_t__ byte_padding; scalar_t__ size; int sig; scalar_t__ offset; } ;
typedef TYPE_1__ fz_icc_tag ;
typedef int fz_context ;


 scalar_t__ ICC_DATATYPE_SIZE ;
 scalar_t__ get_padding (scalar_t__) ;

__attribute__((used)) static void
init_tag(fz_context *ctx, fz_icc_tag tag_list[], int *last_tag, icTagSignature tagsig, int datasize)
{
 int curr_tag = (*last_tag) + 1;

 tag_list[curr_tag].offset = tag_list[curr_tag - 1].offset + tag_list[curr_tag - 1].size;
 tag_list[curr_tag].sig = tagsig;
 tag_list[curr_tag].byte_padding = get_padding(ICC_DATATYPE_SIZE + datasize);
 tag_list[curr_tag].size = ICC_DATATYPE_SIZE + datasize + tag_list[curr_tag].byte_padding;
 *last_tag = curr_tag;
}
