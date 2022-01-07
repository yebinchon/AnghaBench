
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vlc_http_conn {TYPE_1__* cbs; } ;
struct TYPE_2__ {int (* release ) (struct vlc_http_conn*) ;} ;


 int stub1 (struct vlc_http_conn*) ;

__attribute__((used)) static inline void vlc_http_conn_release(struct vlc_http_conn *conn)
{
    conn->cbs->release(conn);
}
