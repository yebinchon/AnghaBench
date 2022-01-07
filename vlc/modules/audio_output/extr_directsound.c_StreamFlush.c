
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sys; } ;
typedef TYPE_1__ aout_stream_t ;
typedef int HRESULT ;


 int Flush (int ) ;

__attribute__((used)) static HRESULT StreamFlush( aout_stream_t *s )
{
    return Flush( s->sys );
}
