
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
typedef scalar_t__ ngx_uint_t ;
struct TYPE_4__ {int facility; int tag; scalar_t__ nohostname; scalar_t__ severity; } ;
typedef TYPE_1__ ngx_syslog_peer_t ;
struct TYPE_5__ {int hostname; } ;


 int ngx_cached_syslog_time ;
 TYPE_3__* ngx_cycle ;
 int * ngx_sprintf (int *,char*,scalar_t__,int *,int *,...) ;

u_char *
ngx_syslog_add_header(ngx_syslog_peer_t *peer, u_char *buf)
{
    ngx_uint_t pri;

    pri = peer->facility * 8 + peer->severity;

    if (peer->nohostname) {
        return ngx_sprintf(buf, "<%ui>%V %V: ", pri, &ngx_cached_syslog_time,
                           &peer->tag);
    }

    return ngx_sprintf(buf, "<%ui>%V %V %V: ", pri, &ngx_cached_syslog_time,
                       &ngx_cycle->hostname, &peer->tag);
}
