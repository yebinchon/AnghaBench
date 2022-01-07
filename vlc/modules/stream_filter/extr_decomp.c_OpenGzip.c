
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int uint8_t ;
struct TYPE_3__ {int s; } ;
typedef TYPE_1__ stream_t ;


 int Open (TYPE_1__*,char*) ;
 int VLC_EGENERIC ;
 scalar_t__ memcmp (int const*,char*,int) ;
 int msg_Dbg (int *,char*) ;
 int vlc_stream_Peek (int ,int const**,int) ;

__attribute__((used)) static int OpenGzip (vlc_object_t *obj)
{
    stream_t *stream = (stream_t *)obj;
    const uint8_t *peek;

    if (vlc_stream_Peek (stream->s, &peek, 3) < 3)
        return VLC_EGENERIC;

    if (memcmp (peek, "\x1f\x8b\x08", 3))
        return VLC_EGENERIC;

    msg_Dbg (obj, "detected gzip compressed stream");
    return Open (stream, "zcat");
}
