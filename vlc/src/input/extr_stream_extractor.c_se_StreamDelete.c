
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int p_sys; } ;
typedef TYPE_1__ stream_t ;


 int se_Release (int ) ;

__attribute__((used)) static void
se_StreamDelete( stream_t* stream )
{
    se_Release( stream->p_sys );
}
