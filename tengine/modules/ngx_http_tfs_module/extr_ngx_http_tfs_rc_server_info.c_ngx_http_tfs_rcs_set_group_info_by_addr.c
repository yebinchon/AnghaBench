
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
typedef void* ngx_int_t ;
struct TYPE_5__ {size_t unlink_cluster_group_count; TYPE_3__* unlink_cluster_groups; } ;
typedef TYPE_1__ ngx_http_tfs_rcs_info_t ;
typedef int ngx_http_tfs_inet_t ;
struct TYPE_6__ {void* group_seq; int ns_vip; } ;
typedef TYPE_2__ ngx_http_tfs_group_info_t ;
struct TYPE_7__ {size_t info_count; void* group_count; TYPE_2__* group_info; } ;
typedef TYPE_3__ ngx_http_tfs_cluster_group_info_t ;


 scalar_t__ ngx_memcmp (int *,int *,int) ;

void
ngx_http_tfs_rcs_set_group_info_by_addr(ngx_http_tfs_rcs_info_t *rc_info,
    ngx_int_t group_count, ngx_int_t group_seq, ngx_http_tfs_inet_t addr)
{
    ngx_uint_t i, j;
    ngx_http_tfs_group_info_t *group_info;
    ngx_http_tfs_cluster_group_info_t *cluster_group_info;

    cluster_group_info = rc_info->unlink_cluster_groups;

    for (i = 0; i < rc_info->unlink_cluster_group_count; i++) {
        group_info = cluster_group_info[i].group_info;

        for (j = 0; j < cluster_group_info[i].info_count; j++) {

            if (ngx_memcmp(&group_info[j].ns_vip, &addr,
                           sizeof(ngx_http_tfs_inet_t)) == 0)
            {
                group_info[j].group_seq = group_seq;
                cluster_group_info[i].group_count = group_count;
                return;
            }
        }
    }
}
