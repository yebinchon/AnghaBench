
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spa_t ;
typedef scalar_t__ boolean_t ;
typedef int arc_buf_t ;


 int ARC_BUFC_DATA ;
 int ARC_BUFC_METADATA ;
 int * arc_alloc_buf (int *,int ,int ,int) ;
 int arc_buf_size (int *) ;
 int arc_loaned_bytes_update (int ) ;
 int arc_onloan_tag ;

arc_buf_t *
arc_loan_buf(spa_t *spa, boolean_t is_metadata, int size)
{
 arc_buf_t *buf = arc_alloc_buf(spa, arc_onloan_tag,
     is_metadata ? ARC_BUFC_METADATA : ARC_BUFC_DATA, size);

 arc_loaned_bytes_update(arc_buf_size(buf));

 return (buf);
}
