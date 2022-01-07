
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int p_next; } ;
typedef TYPE_1__ sout_stream_t ;


 int sout_StreamIdDel (int ,void*) ;

__attribute__((used)) static void Del( sout_stream_t *p_stream, void *id )
{
    sout_StreamIdDel( p_stream->p_next, id );
}
