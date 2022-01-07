
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* upstream; } ;
typedef TYPE_3__ ngx_stream_session_t ;
typedef int ngx_multi_connection_t ;
typedef int ngx_connection_t ;
struct TYPE_5__ {int * connection; } ;
struct TYPE_6__ {TYPE_1__ peer; } ;


 int * ngx_get_multi_connection (int *) ;

ngx_multi_connection_t*
ngx_stream_session_get_multi_connection(ngx_stream_session_t *s)
{
    ngx_connection_t *pc;

    pc = s->upstream->peer.connection;

    return ngx_get_multi_connection(pc);
}
