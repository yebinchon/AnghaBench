
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_fast32_t ;
struct vlc_http_msg {int dummy; } ;


 int assert (int ) ;
 int conn_send (int ) ;
 int vlc_http_msg_add_agent (struct vlc_http_msg*,char*) ;
 int vlc_http_msg_destroy (struct vlc_http_msg*) ;
 int vlc_http_msg_h2_frame (struct vlc_http_msg*,int ,int) ;
 struct vlc_http_msg* vlc_http_resp_create (int) ;

__attribute__((used)) static void stream_reply(uint_fast32_t id, bool nodata)
{
    struct vlc_http_msg *m = vlc_http_resp_create(200);
    assert(m != ((void*)0));
    vlc_http_msg_add_agent(m, "VLC-h2-tester");

    conn_send(vlc_http_msg_h2_frame(m, id, nodata));
    vlc_http_msg_destroy(m);
}
