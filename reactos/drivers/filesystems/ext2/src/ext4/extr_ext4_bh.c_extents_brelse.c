
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int dummy; } ;


 int brelse (struct buffer_head*) ;

void extents_brelse(struct buffer_head *bh)
{
    brelse(bh);
}
