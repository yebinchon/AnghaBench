
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* sync_mgr; } ;
struct TYPE_3__ {int last_recv_bytes; } ;
typedef int GError ;


 TYPE_2__* seaf ;

int
seafile_get_download_rate(GError **error)
{
    return seaf->sync_mgr->last_recv_bytes;
}
