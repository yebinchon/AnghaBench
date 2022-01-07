
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int s; } ;
typedef TYPE_1__ stream_t ;


 int vlc_stream_Seek (int ,int ) ;

__attribute__((used)) static int Seek( stream_t *s, uint64_t offset )
{
    return vlc_stream_Seek( s->s, offset );
}
