
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int dmu_buf_t ;
struct TYPE_2__ {int * db_blkptr; } ;
typedef TYPE_1__ dmu_buf_impl_t ;
typedef int blkptr_t ;



blkptr_t *
dmu_buf_get_blkptr(dmu_buf_t *db)
{
 dmu_buf_impl_t *dbi = (dmu_buf_impl_t *)db;
 return (dbi->db_blkptr);
}
