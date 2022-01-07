
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int dummy; } ;


 int READ ;
 int ll_rw_block (int ,int,struct buffer_head**) ;

int bh_submit_read(struct buffer_head *bh)
{
 ll_rw_block(READ, 1, &bh);
    return 0;
}
