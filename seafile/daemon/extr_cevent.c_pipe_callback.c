
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int gconstpointer ;
typedef int evutil_socket_t ;
struct TYPE_8__ {scalar_t__ id; } ;
struct TYPE_7__ {int handler_table; } ;
struct TYPE_6__ {int handler_data; int (* handler ) (TYPE_3__*,int ) ;} ;
typedef TYPE_1__ Handler ;
typedef TYPE_2__ CEventManager ;
typedef TYPE_3__ CEvent ;


 int CEVENT_SIZE ;
 TYPE_1__* g_hash_table_lookup (int ,int ) ;
 int g_warning (char*,scalar_t__) ;
 int seaf_pipe_readn (int ,char*,int) ;
 int stub1 (TYPE_3__*,int ) ;

void pipe_callback (evutil_socket_t fd, short event, void *vmgr)
{
    CEventManager *manager = (CEventManager *) vmgr;
    CEvent *cevent;
    char buf[CEVENT_SIZE];

    if (seaf_pipe_readn(fd, buf, CEVENT_SIZE) != CEVENT_SIZE) {
        return;
    }

    cevent = (CEvent *)buf;
    Handler *h = g_hash_table_lookup (manager->handler_table,
                                      (gconstpointer)(long)cevent->id);
    if (h == ((void*)0)) {
        g_warning ("no handler for event type %d\n", cevent->id);
        return;
    }

    h->handler(cevent, h->handler_data);
}
