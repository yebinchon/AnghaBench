
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_fast32_t ;


 int VLC_H2_DEFAULT_MAX_FRAME ;
 int conn_send (int ) ;
 int vlc_h2_frame_headers (int ,int ,int,int,char const***) ;

__attribute__((used)) static void stream_continuation(uint_fast32_t id)
{
    const char *h[][2] = {
        { ":status", "100" },
    };

    conn_send(vlc_h2_frame_headers(id, VLC_H2_DEFAULT_MAX_FRAME, 0, 1, h));
}
