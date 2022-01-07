
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* priv; } ;
struct TYPE_5__ {int reset_bytes_timer; int ca_bundle_path; } ;
typedef TYPE_2__ HttpTxManager ;


 int RESET_BYTES_INTERVAL_MSEC ;
 int g_unlink (int ) ;
 int reset_bytes ;
 int seaf_timer_new (int ,TYPE_2__*,int ) ;

int
http_tx_manager_start (HttpTxManager *mgr)
{







    mgr->priv->reset_bytes_timer = seaf_timer_new (reset_bytes,
                                                   mgr,
                                                   RESET_BYTES_INTERVAL_MSEC);

    return 0;
}
