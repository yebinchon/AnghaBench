
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_http_mgr {struct vlc_http_conn* conn; } ;
struct vlc_http_conn {int dummy; } ;


 int assert (int) ;
 int vlc_http_conn_release (struct vlc_http_conn*) ;

__attribute__((used)) static void vlc_http_mgr_release(struct vlc_http_mgr *mgr,
                                 struct vlc_http_conn *conn)
{
    assert(mgr->conn == conn);
    mgr->conn = ((void*)0);

    vlc_http_conn_release(conn);
}
