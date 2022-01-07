
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int p_access; } ;
typedef TYPE_1__ sout_mux_t ;
typedef int sout_input_t ;


 int GetHeader (TYPE_1__*) ;
 scalar_t__ VLC_SUCCESS ;
 int VLC_UNUSED (int *) ;
 int msg_Dbg (TYPE_1__*,char*) ;
 scalar_t__ sout_AccessOutSeek (int ,int ) ;
 int sout_AccessOutWrite (int ,int ) ;

__attribute__((used)) static void DelStream( sout_mux_t *p_mux, sout_input_t *p_input )
{
    VLC_UNUSED(p_input);
    msg_Dbg( p_mux, "removing input" );

    msg_Dbg( p_mux, "writing header data" );
    if( sout_AccessOutSeek( p_mux->p_access, 0 ) == VLC_SUCCESS )
    {
        sout_AccessOutWrite( p_mux->p_access, GetHeader( p_mux ) );
    }
}
