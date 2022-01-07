
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sout_stream_t ;
struct TYPE_3__ {int format; } ;
typedef TYPE_1__ sout_stream_id_sys_t ;


 int VLC_UNUSED (int *) ;
 int es_format_Clean (int *) ;
 int free (TYPE_1__*) ;

__attribute__((used)) static void Del( sout_stream_t *p_stream, void *_id )
{
    VLC_UNUSED( p_stream );
    sout_stream_id_sys_t *id = (sout_stream_id_sys_t *)_id;
    es_format_Clean( &id->format );
    free( id );
}
