
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int lost; } ;
struct TYPE_7__ {int rb; } ;
struct TYPE_8__ {TYPE_1__ cycle; TYPE_2__ rcvpkt; } ;
typedef TYPE_3__ BWController ;


 int BWC_AVG_PKT_COUNT ;
 int rb_data (int ,void**) ;
 int send_update (TYPE_3__*) ;

void bwc_add_lost(BWController *bwc, uint32_t bytes)
{
    if (!bwc)
        return;

    if (!bytes) {
        uint32_t *t_avg[BWC_AVG_PKT_COUNT], c = 1;

        rb_data(bwc->rcvpkt.rb, (void **) t_avg);

        int i = 0;

        for (; i < BWC_AVG_PKT_COUNT; i ++) {
            bytes += *(t_avg[i]);

            if (*(t_avg[i]))
                c++;
        }

        bytes /= c;
    }

    bwc->cycle.lost += bytes;
    send_update(bwc);
}
