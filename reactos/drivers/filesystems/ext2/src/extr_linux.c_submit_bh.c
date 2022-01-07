
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int dummy; } ;


 int submit_bh_pin (int,struct buffer_head*) ;

int submit_bh(int rw, struct buffer_head *bh)
{
    return submit_bh_pin(rw, bh);
}
