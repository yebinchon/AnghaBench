
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sout_stream_t ;


 int msg_Dbg (int *,char*) ;

__attribute__((used)) static void Del( sout_stream_t *p_stream, void *id )
{
    msg_Dbg( p_stream, "Removing a stream" );

    (void) id;
}
