
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zh_hdr_size; int zh_stats_size; int zh_stats_count; int zh_ds_size; int zh_ds_count; scalar_t__ zh_size; scalar_t__ zh_opts_size; } ;
typedef TYPE_1__ ztest_shared_hdr_t ;



__attribute__((used)) static int
shared_data_size(ztest_shared_hdr_t *hdr)
{
 int size;

 size = hdr->zh_hdr_size;
 size += hdr->zh_opts_size;
 size += hdr->zh_size;
 size += hdr->zh_stats_size * hdr->zh_stats_count;
 size += hdr->zh_ds_size * hdr->zh_ds_count;

 return (size);
}
