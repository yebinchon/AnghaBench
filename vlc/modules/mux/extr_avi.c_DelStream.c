
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sout_mux_t ;
struct TYPE_3__ {int p_sys; } ;
typedef TYPE_1__ sout_input_t ;


 int free (int ) ;
 int msg_Dbg (int *,char*) ;

__attribute__((used)) static void DelStream( sout_mux_t *p_mux, sout_input_t *p_input )
{
    msg_Dbg( p_mux, "removing input" );

    free( p_input->p_sys );
}
