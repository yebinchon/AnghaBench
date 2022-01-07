
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int stream_t ;
struct TYPE_3__ {scalar_t__ start; scalar_t__ offset; scalar_t__ length; int next; } ;
typedef TYPE_1__ mtrk_t ;
typedef scalar_t__ int32_t ;


 scalar_t__ ReadVarInt (int *) ;
 int UINT64_MAX ;
 int assert (int) ;
 scalar_t__ vlc_stream_Tell (int *) ;

__attribute__((used)) static int ReadDeltaTime (stream_t *s, mtrk_t *track)
{
    int32_t delta_time;

    assert (vlc_stream_Tell (s) == track->start + track->offset);

    if (track->offset >= track->length)
    {

        track->next = UINT64_MAX;
        return 0;
    }

    delta_time = ReadVarInt (s);
    if (delta_time < 0)
        return -1;

    track->next += delta_time;
    track->offset = vlc_stream_Tell (s) - track->start;
    return 0;
}
