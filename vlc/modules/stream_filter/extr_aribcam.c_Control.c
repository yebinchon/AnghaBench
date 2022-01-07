
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int va_list ;
struct TYPE_3__ {int s; } ;
typedef TYPE_1__ stream_t ;


 int vlc_stream_vaControl (int ,int,int ) ;

__attribute__((used)) static int Control( stream_t *p_stream, int i_query, va_list args )
{
    return vlc_stream_vaControl( p_stream->s, i_query, args );
}
