
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int rb; } ;
struct TYPE_5__ {TYPE_1__ rcvpkt; } ;
typedef TYPE_2__ BWController ;


 int rb_read (int ,void**) ;
 int rb_write (int ,int *) ;

void bwc_feed_avg(BWController *bwc, uint32_t bytes)
{
    uint32_t *p;

    rb_read(bwc->rcvpkt.rb, (void **) &p);
    rb_write(bwc->rcvpkt.rb, p);

    *p = bytes;
}
