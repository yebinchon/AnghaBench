
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_fast32_t ;


 int conn_send (int ) ;
 int strlen (char const*) ;
 int vlc_h2_frame_data (int ,char const*,int ,int) ;

__attribute__((used)) static void stream_data(uint_fast32_t id, const char *str, bool eos)
{
    conn_send(vlc_h2_frame_data(id, str, strlen(str), eos));
}
