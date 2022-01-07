
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef char uint8_t ;
struct TYPE_3__ {int s; } ;
typedef TYPE_1__ stream_t ;


 int Open (TYPE_1__*,char*) ;
 int VLC_EGENERIC ;
 scalar_t__ memcmp (char const*,char*,int) ;
 int msg_Dbg (int *,char*) ;
 int vlc_stream_Peek (int ,char const**,int) ;

__attribute__((used)) static int OpenBzip2 (vlc_object_t *obj)
{
    stream_t *stream = (stream_t *)obj;
    const uint8_t *peek;


    if (vlc_stream_Peek (stream->s, &peek, 10) < 10)
        return VLC_EGENERIC;

    if (memcmp (peek, "BZh", 3) || (peek[3] < '1') || (peek[3] > '9')
     || memcmp (peek + 4, "\x31\x41\x59\x26\x53\x59", 6))
        return VLC_EGENERIC;

    msg_Dbg (obj, "detected bzip2 compressed stream");
    return Open (stream, "bzcat");
}
