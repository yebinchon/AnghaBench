
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int s; } ;
typedef TYPE_1__ stream_t ;
typedef int ssize_t ;


 int vlc_stream_Read (int ,void*,size_t) ;

__attribute__((used)) static ssize_t Read( stream_t *s, void *buffer, size_t i_read )
{
    return vlc_stream_Read( s->s, buffer, i_read );
}
