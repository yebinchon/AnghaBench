
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * zcr_detector; int zcr_ereport; int zcr_length; int zcr_ckinfo; } ;
typedef TYPE_1__ zio_cksum_report_t ;
typedef int zfs_ecksum_info_t ;
typedef int boolean_t ;
typedef int abd_t ;


 int * annotate_ecksum (int ,int ,int const*,int const*,int ,int ) ;
 int kmem_free (int *,int) ;
 int zfs_zevent_post (int ,int *,int (*) (int ,int *)) ;
 int zfs_zevent_post_cb (int ,int *) ;

void
zfs_ereport_finish_checksum(zio_cksum_report_t *report, const abd_t *good_data,
    const abd_t *bad_data, boolean_t drop_if_identical)
{
}
