
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int mpc_int32_t ;
struct TYPE_2__ {int s; } ;
typedef TYPE_1__ demux_t ;


 int stream_Size (int ) ;

__attribute__((used)) static mpc_int32_t ReaderGetSize( void *p_private )
{
    demux_t *p_demux = (demux_t*)p_private;
    return stream_Size( p_demux->s );
}
