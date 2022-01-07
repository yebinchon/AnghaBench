
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sys; } ;
typedef TYPE_1__ aout_stream_t ;
typedef int HRESULT ;


 int Pause (int ,int) ;

__attribute__((used)) static HRESULT StreamPause( aout_stream_t *s, bool pause )
{
    return Pause( s->sys, pause );
}
