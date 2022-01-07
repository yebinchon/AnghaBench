
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {struct TYPE_4__* p_sys; } ;
typedef TYPE_1__ stream_t ;


 int vlc_stream_Seek (TYPE_1__*,int ) ;

__attribute__((used)) static int AStreamSeek(stream_t *s, uint64_t offset)
{
    stream_t *access = s->p_sys;

    return vlc_stream_Seek(access, offset);
}
